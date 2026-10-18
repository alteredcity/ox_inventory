import React, { useEffect, useState } from 'react';
import { getCategory, getItemLabel, getItemUrl } from '../../helpers';
import { useAppSelector } from '../../store';
import { selectIconTheme } from '../../store/ui';
import { Slot, SlotWithItem } from '../../typings';

// URLs deja en echec : une seule tentative par URL, meme si le slot est remonte plus tard.
const failedUrls = new Set<string>();

const ItemIcon: React.FC<{ item: Slot; className?: string; eager?: boolean }> = ({ item, className, eager }) => {
  const url = item.name ? getItemUrl(item as SlotWithItem) : undefined;
  const categories = useAppSelector((state) => state.ui.categories);
  const natural = useAppSelector(selectIconTheme) === 'natural';
  const [failed, setFailed] = useState(() => !url || failedUrls.has(url));

  useEffect(() => {
    setFailed(!url || failedUrls.has(url));
  }, [url]);

  if (!item.name) return null;

  if (failed || !url) {
    const cat = categories.find((c) => c.id === getCategory(item));

    // Image absente : icone de la categorie (meme theme que les onglets), a defaut l'initiale
    if (cat && cat.id !== 'all') {
      const colored = natural && cat.primary;
      const classes = colored && !cat.icon.includes('fa-duotone') ? cat.icon.replace('fa-solid', 'fa-duotone fa-solid') : cat.icon;

      return (
        <span className={`ico ph ph-cat ${className || ''}`} aria-hidden="true">
          <b key={natural ? 'natural' : 'basic'}>
            <i
              className={classes}
              style={
                colored
                  ? ({ '--fa-primary-color': cat.primary, '--fa-secondary-color': cat.secondary, '--fa-secondary-opacity': 0.85 } as React.CSSProperties)
                  : undefined
              }
            />
          </b>
        </span>
      );
    }

    return (
      <span className={`ico ph ${className || ''}`} aria-hidden="true">
        {getItemLabel(item).charAt(0).toUpperCase()}
      </span>
    );
  }

  return (
    <img
      className={`ico ${className || ''}`}
      src={url}
      alt=""
      draggable={false}
      loading={eager ? 'eager' : 'lazy'}
      onError={() => {
        failedUrls.add(url);
        setFailed(true);
      }}
    />
  );
};

export default ItemIcon;
