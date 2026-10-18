import React, { useEffect, useState } from 'react';
import useNuiEvent from '../../hooks/useNuiEvent';
import InventoryControl from './InventoryControl';
import InventoryHotbar from './InventoryHotbar';
import { useAppDispatch, useAppSelector } from '../../store';
import { fetchNui } from '../../utils/fetchNui';
import { refreshSlots, setAdditionalMetadata, setupInventory } from '../../store/inventory';
import { setCategories, setEquipment } from '../../store/ui';
import type { CategoryTab } from '../../config/categories';
import type { EquipmentSlot } from '../../typings/ui';
import { useExitListener } from '../../hooks/useExitListener';
import type { Inventory as InventoryProps } from '../../typings';
import RightInventory from './RightInventory';
import LeftInventory from './LeftInventory';
import Tooltip from '../utils/Tooltip';
import { closeTooltip } from '../../store/tooltip';
import InventoryContext from './InventoryContext';
import { closeContextMenu } from '../../store/contextMenu';
import Fade from '../utils/transitions/Fade';

const Inventory: React.FC = () => {
  const [inventoryVisible, setInventoryVisible] = useState(false);
  const dispatch = useAppDispatch();
  const simple = useAppSelector((state) => state.ui.prefs.layout) === 'simple';

  // Le clone du ped (rendu par le jeu) n'existe que dans la disposition avec mannequin.
  useEffect(() => {
    fetchNui('setPreviewPed', { enabled: !simple });
  }, [simple, inventoryVisible]);

  // Les notifications d'objets (portail hors de ce composant) ne s'affichent que inventaire ferme, voir index.scss.
  useEffect(() => {
    document.documentElement.dataset.invOpen = String(inventoryVisible);
  }, [inventoryVisible]);

  useNuiEvent<boolean>('setInventoryVisible', setInventoryVisible);
  useNuiEvent<false>('closeInventory', () => {
    setInventoryVisible(false);
    dispatch(closeContextMenu());
    dispatch(closeTooltip());
  });
  useExitListener(setInventoryVisible);

  useNuiEvent<{
    leftInventory?: InventoryProps;
    rightInventory?: InventoryProps;
  }>('setupInventory', (data) => {
    dispatch(setupInventory(data));
    !inventoryVisible && setInventoryVisible(true);
  });

  useNuiEvent('refreshSlots', (data) => dispatch(refreshSlots(data)));

  useNuiEvent('displayMetadata', (data: Array<{ metadata: string; value: string }>) => {
    dispatch(setAdditionalMetadata(data));
  });

  // Donnees optionnelles fournies par un module serveur (voir web/UI_CONTRACT.md)
  useNuiEvent<EquipmentSlot[] | null>('setEquipment', (data) => dispatch(setEquipment(data)));
  // Categories d'objets (data/categories.lua), envoyees par client.lua apres `init`
  useNuiEvent<CategoryTab[] | null>('setCategories', (data) => dispatch(setCategories(data)));

  return (
    <>
      <Fade in={inventoryVisible}>
        <div className="inventory-wrapper">
          <div className={`wrap${simple ? ' simple' : ''}`}>
            <LeftInventory />
            <InventoryControl />
            <RightInventory />
          </div>
          <Tooltip />
          <InventoryContext />
        </div>
      </Fade>
      <InventoryHotbar />
    </>
  );
};

export default Inventory;
