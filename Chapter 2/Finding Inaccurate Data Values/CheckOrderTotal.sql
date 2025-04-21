SELECT OrderItem.OrderID,
  Orders.TotalDue,
  SUM(Price * Quantity) as NewTotalDue
FROM OrderItem
  JOIN Product ON OrderItem.ProductID = Product.ProductID
  JOIN Orders ON OrderItem.OrderID = Orders.OrderID
GROUP BY OrderItem.OrderID,
  Orders.TotalDue