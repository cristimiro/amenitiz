# amenitiz

This is an application that aims to help end users compute the total sum of the products they have in the cart.

With the current implementation, the users can have in their cart coffees, tea, and strawberries.

Each of the products that would be within the cart is known by a code, and has a name and a price, and also some special offers.

Green Tea: 
    Code: GR1
    Name: Green tea
    Price: 3.11€

Green Tea offer -> For each green tea bought, the second one would be for free

Strawberries: 
    Code: SR1
    Name: Strawberries
    Price: 5.00€

Strawberries offer -> Bulk purchase discount. More than 3 result in price drop from 5.00€ to 4.50€

Coffee: 
    Code: CF1
    Name: Coffee
    Price: 11.23€

Coffee offer -> For 3 or more coffees, the price will drop with 2/3 of original price

# How to use

1. Clone this repository on your local machine. (`git clone https://github.com/cristimiro/amenitiz.git`)
2. Open project folder ( `cd amenitiz`)
3. Run application with desired cart items list (`ruby main.rb cart_items_list`)

Replace cart_items_list with any list, following the bellow format:
Examples: 
    - `GR1 GR1`
    - `SR1 SR1 GR1 SR1`
    - `GR1 CF1 RS1 CF1 CF1`

!! Atention. Code must be written with capital letters. The input is case sensitive.