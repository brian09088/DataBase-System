# ER Model:

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
