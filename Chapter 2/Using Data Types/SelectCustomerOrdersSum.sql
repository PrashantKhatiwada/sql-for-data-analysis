SELECT
Customer.CustomerID,
  FirstName,
  LastName,
  Sum(TotalDue)
FROM Customer
  JOIN Orders on Customer.CustomerID = Orders.CustomerID

GROUP BY Customer.CustomerID,
  FirstName,
  LastName
ORDER BY Sum(TotalDue) DESC
LIMIT 10