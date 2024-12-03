SELECT
    C.FirstName AS CustomerFirstName,
    C.LastName AS CustomerLastName,
    CS.CompanyName AS StockBought,
    I.PurchaseDate
FROM
    cus_det AS C
INNER JOIN
    Investment_data AS I ON C.CustomerID = I.CustomerID
INNER JOIN
    Customer_share_data AS CS ON I.ShareID = CS.ShareID;