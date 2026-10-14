import React, { useState, useRef, useEffect } from 'react';
import { useDrop } from 'react-dnd';
import { useAppDispatch, useAppSelector } from '../../store';
import { selectItemAmount, selectLeftInventory, setItemAmount } from '../../store/inventory';
import { toggleSettings } from '../../store/ui';
import { DragSource } from '../../typings';
import { onUse } from '../../dnd/onUse';
import { onGive } from '../../dnd/onGive';
import { onDrop } from '../../dnd/onDrop';
import { fetchNui } from '../../utils/fetchNui';
import { Locale } from '../../store/locale';
import { isSlotWithItem } from '../../helpers';
import { HOTBAR_SLOTS } from '../../config/ui';
import UsefulControls from './UsefulControls';
import Mannequin from './Mannequin';
import InventorySlot from './InventorySlot';
import SettingsPopover from './SettingsPopover';

const formatAmount = (n: number) => (n > 0 ? n.toLocaleString('en-US') : '0');
const digitsOnly = (s: string) => s.replace(/\D/g, '');
const countDigitsBefore = (s: string, index: number) => digitsOnly(s.substring(0, index)).length;

// Colonne centrale : mannequin, jauges, boutons d'action et hotbar (slots 1 a 5 du joueur).
const InventoryControl: React.FC = () => {
  const itemAmount = useAppSelector(selectItemAmount);
  const left = useAppSelector(selectLeftInventory);
  const selected = useAppSelector((state) => state.ui.selected);
  const needs = useAppSelector((state) => state.ui.needs);
  const settingsOpen = useAppSelector((state) => state.ui.settingsOpen);
  const dispatch = useAppDispatch();

  const [infoVisible, setInfoVisible] = useState(false);
  const [value, setValue] = useState(formatAmount(itemAmount));
  const inputRef = useRef<HTMLInputElement>(null);
  const cursorRef = useRef<number | null>(null);

  const [{ isOver: over_use, dragging: drag_use }, use] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    collect: (monitor) => ({
      isOver: monitor.isOver(),
      dragging: monitor.getItem()?.inventory === 'player',
    }),
    drop: (source) => {
      source.inventory === 'player' && onUse(source.item);
    },
  }));

  const [{ isOver: over_give, dragging: drag_give }, give] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    collect: (monitor) => ({
      isOver: monitor.isOver(),
      dragging: monitor.getItem()?.inventory === 'player',
    }),
    drop: (source) => {
      source.inventory === 'player' && onGive(source.item);
    },
  }));

  const [{ isOver: over_drop, dragging: drag_drop }, drop] = useDrop<DragSource, void, any>(() => ({
    accept: 'SLOT',
    collect: (monitor) => ({
      isOver: monitor.isOver(),
      dragging: monitor.getItem()?.inventory === 'player',
    }),
    drop: (source) => {
      source.inventory !== 'shop' && source.inventory !== 'crafting' && onDrop(source);
    },
  }));

  // Item selectionne dans le panneau joueur (pour les clics sur Utiliser / Donner / Jeter).
  const selectedItem = selected && selected.inventory === 'player' ? left.items[selected.slot - 1] : undefined;
  const target = selectedItem && isSlotWithItem(selectedItem) ? selectedItem : undefined;

  const commitValue = (raw: string, cursorIndex: number) => {
    const digitsBefore = countDigitsBefore(raw, cursorIndex);
    const num = parseInt(digitsOnly(raw), 10) || 0;

    setValue(formatAmount(num));
    dispatch(setItemAmount(num));
    cursorRef.current = digitsBefore;
  };

  const handleChange = (event: React.ChangeEvent<HTMLInputElement>) =>
    commitValue(event.target.value, event.target.selectionStart ?? 0);

  const handleKeyDown = (event: React.KeyboardEvent<HTMLInputElement>) => {
    const el = event.currentTarget;
    const pos = el.selectionStart ?? 0;

    if (pos !== el.selectionEnd) return;

    if (event.key === 'Backspace' && el.value[pos - 1] === ',') {
      event.preventDefault();
      commitValue(el.value.slice(0, pos - 2) + el.value.slice(pos), pos - 2);
    } else if (event.key === 'Delete' && el.value[pos] === ',') {
      event.preventDefault();
      commitValue(el.value.slice(0, pos) + el.value.slice(pos + 2), pos);
    }
  };

  useEffect(() => {
    if (!inputRef.current || cursorRef.current === null) return;
    let newPos = 0;
    let count = 0;

    for (let i = 0; i < value.length && count < cursorRef.current; i++) {
      if (/\d/.test(value[i])) count++;
      newPos++;
    }

    inputRef.current.setSelectionRange(newPos, newPos);
    cursorRef.current = null;
  }, [value]);

  return (
    <section className="center">
      <UsefulControls infoVisible={infoVisible} setInfoVisible={setInfoVisible} />
      <div className="panel mq">
        <div className="head">
          <h2>Personnage</h2>
          <span className="weight">{left.label}</span>
          <span className="head-btns">
            <button className="icon-btn" title={Locale.ui_usefulcontrols || '?'} onClick={() => setInfoVisible(true)}>
              ?
            </button>
            <button className="icon-btn" title={Locale.ui_close || 'Fermer'} onClick={() => fetchNui('exit')}>
              {'×'}
            </button>
          </span>
        </div>
        <Mannequin />
      </div>

      <div className="panel status">
        {needs.length > 0 && (
          <div className="needs">
            {needs.map((n) => (
              <div key={n.id} className="need" style={n.color ? { borderColor: n.color } : undefined} title={n.label}>
                {n.icon}
                <b>{Math.round(n.value)}%</b>
              </div>
            ))}
          </div>
        )}
        <div className="actions">
          <input
            className="amount"
            type="text"
            ref={inputRef}
            value={value}
            onChange={handleChange}
            onKeyDown={handleKeyDown}
            aria-label="Quantite"
          />
          <button
            className={`btn${target || drag_use ? '' : ' off'}${drag_use ? ' armed' : ''}${over_use ? ' over' : ''}`}
            ref={(el) => void use(el)}
            onClick={() => target && onUse(target)}
          >
            {Locale.ui_use || 'Utiliser'}
          </button>
          <button
            className={`btn${target || drag_give ? '' : ' off'}${drag_give ? ' armed' : ''}${over_give ? ' over' : ''}`}
            ref={(el) => void give(el)}
            onClick={() => target && onGive(target)}
          >
            {Locale.ui_give || 'Donner'}
          </button>
          <button
            className={`btn${target || drag_drop ? '' : ' off'}${drag_drop ? ' armed' : ''}${over_drop ? ' over' : ''}`}
            ref={(el) => void drop(el)}
            onClick={() => target && onDrop({ item: target, inventory: 'player' })}
          >
            {Locale.ui_drop || 'Jeter'}
          </button>
          <button className="btn" onClick={() => dispatch(toggleSettings(undefined))}>
            Reglages
          </button>
        </div>
        {settingsOpen && <SettingsPopover />}
      </div>

      <div className="hot">
        {left.items.slice(0, HOTBAR_SLOTS).map((item) => (
          <InventorySlot
            key={`hot-${item.slot}`}
            item={item}
            hotkey={item.slot}
            compact
            inventoryType={left.type}
            inventoryGroups={left.groups}
            inventoryId={left.id}
          />
        ))}
      </div>
    </section>
  );
};

export default InventoryControl;
