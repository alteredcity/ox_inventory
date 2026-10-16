import InventoryGrid from './InventoryGrid';
import ItemDescription from './ItemDescription';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import { selectPrefs } from '../../store/ui';

const LeftInventory: React.FC = () => {
  const leftInventory = useAppSelector(selectLeftInventory);
  const infoBottom = useAppSelector(selectPrefs).infoBottom;

  return (
    <InventoryGrid inventory={leftInventory} variant="player">
      {infoBottom && <ItemDescription />}
    </InventoryGrid>
  );
};

export default LeftInventory;
