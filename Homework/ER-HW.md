# 1. ER Model:

## *Entities:*

- Customer (customer#, name, address)
- Item (item#, unit-price, amount-in-stock)
- Order (order#, date received, quantity ordered)

## *Relationships:*

- Places: A customer can place many orders. An order is placed by only one customer.
- Contains: An order can contain many items. An item can be contained in many orders.

## *Constraints:*

- Each customer# is unique.
- Each item# is unique.
- Each order# is unique among orders placed by a customer.
- Different customers can have the same order# for the same item.

## *Primary Keys:*

- Customer: customer#
- Item: item#
- Order: order#

# 2. (E-R model)Diagram:
![image](https://user-images.githubusercontent.com/72643996/223040220-12ff1664-ce0c-42f3-9eaa-df2b0cab3ef7.png)

# 3. Functional Dependency Diagram:
```
Customer# --> Name, Address
Item# --> Unit-price, Amount-in-stock
Order# --> Customer#, Date received
(Order#, Item#) --> Quantity ordered
```
# 4. 3NF Database:

- Customer (customer#, name, address)
- Item (item#, unit-price, amount-in-stock)
- Order (order#, date received, customer#)
- OrderItem (order#, item#, quantity ordered)

In the 3NF database, the Orders table has been normalized by removing the non-key attribute quantity ordered and placing it in a separate table OrderItem, which has a composite primary key consisting of the order# and item#. This ensures that there is no redundancy in the database and that data is stored efficiently.
