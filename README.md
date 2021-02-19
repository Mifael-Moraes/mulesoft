# mulesoft
workspace repository by mulesoft artifacts

This is a POC for ModusBox

Description of client scenario:

A new client is considering adopting MuleSoft and wants to understand how MuleSoft
technology would be used to address their needs, the advantages of using MuleSoft, and an
estimate of the effort required for the ModusBox consulting team to do the full implementation,
all the way to production.
The customer has a home-grown ERP system with a complex database (25 different tables)
that they want to expose as public external web services to their business partners. Many of the
resources to be exposed involved multiple hierarchical levels. They would like a running POC
of one initial scenario:

A single web service endpoint returning an Order by Id with the return payload being an Order
containing information from the child tables:

Orders
  OrderID
  PlacementDate
  CustomerName

OrderItems
  OrderItemId
  OrderID
  ItemId
  ItemCount

Items
  ItemId
  ItemName
  ItemCost


