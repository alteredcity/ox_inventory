import InventoryGrid from './InventoryGrid';
import ItemDescription from './ItemDescription';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';

const LeftInventory: React.FC = () => {
  const leftInventory = useAppSelector(selectLeftInventory);

  return (
    <InventoryGrid inventory={leftInventory} variant="player">
      <ItemDescription />
    </InventoryGrid>
  );
};

export default LeftInventory;
