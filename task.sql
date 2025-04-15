USE ShopDB; 

-- Create your stored procedure here
DELIMITER //
CREATE PROCEDURE get_warehouse_product_inventory(IN CompositionID INT)
BEGIN
  SELECT Products.Name, ProductInventory.WarehouseAmount
  FROM Products
  JOIN ProductInventory ON Products.ID = ProductInventory.ProductID
  WHERE ProductInventory.ID = CompositionID;
END //
DELIMITER ;