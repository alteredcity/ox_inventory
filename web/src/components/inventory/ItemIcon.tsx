import React, { useEffect, useState } from 'react';
import { getItemLabel, getItemUrl } from '../../helpers';
import { Slot, SlotWithItem } from '../../typings';

// URLs deja en echec : une seule tentative par URL, meme si le slot est remonte plus tard.
const failedUrls = new Set<string>();

const ItemIcon: React.FC<{ item: Slot; className?: string; eager?: boolean }> = ({ item, className, eager }) => {
  const url = item.name ? getItemUrl(item as SlotWithItem) : undefined;
  const [failed, setFailed] = useState(() => !url || failedUrls.has(url));

  useEffect(() => {
    setFailed(!url || failedUrls.has(url));
  }, [url]);

  if (!item.name) return null;

  if (failed || !url) {
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
