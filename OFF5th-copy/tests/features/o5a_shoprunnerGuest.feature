Feature:
As a guest user
I want to place an order to verify shoprunner checkout workflow
So that I can reach the Thank You page and get the order confirmation number
 
Scenario: search by web id 
Given I am on the website -o5a_shoprunnerGuest
When I enter this product id -o5a_shoprunnerGuest
Then I should be taken to a PDP of this product -o5a_shoprunnerGuest

Scenario: add to bag
Given I am on a Product Detail Page -o5a_shoprunnerGuest
When I select a color, size, quantity “1” -o5a_shoprunnerGuest
And click the ADD TO BAG button -o5a_shoprunnerGuest
Then the item appears in the mini cart -o5a_shoprunnerGuest
And validate product info -o5a_shoprunnerGuest

Scenario: change quantity of the item on bag page
Given I have an item in the minicart -o5a_shoprunnerGuest  
And I access the BAG PAGE by the CHECKOUT button in the minicart -o5a_shoprunnerGuest  
When I update the following product information on the bag page -o5a_shoprunnerGuest
Then I should see the product information updated on the bag: -o5a_shoprunnerGuest  

Scenario: sign into shoprunner account
Given I click on the Shoprunner SIGN IN button -o5a_shoprunnerGuest  
And shoprunner sign in overlay pops up -o5a_shoprunnerGuest  
When I enter a valid shoprunner account email address and password -o5a_shoprunnerGuest   
And I click on the SECURE SIGN IN button on shoprunner sign in overlay -o5a_shoprunnerGuest   
Then I should see a shoprunner WELCOME BACK message -o5a_shoprunnerGuest
And click CONTINUE SHOPPING to close the shoprunner overlay -o5a_shoprunnerGuest
And validate FREE SHIPPING under order summary -o5a_shoprunnerGuest 

Scenario: guest checkout – input SHIPPING info
Given I am on the BAG page with a sign in overlay open -o5a_shoprunnerGuest
And I access the CHECKOUT page via GUEST CHECKOUT -o5a_shoprunnerGuest
When I enter First Name, Last Name, Address Line 1, City -o5a_shoprunnerGuest
And select a state from the State dropdown menu -o5a_shoprunnerGuest
And enter Zip Code, Address, Phone Number -o5a_shoprunnerGuest
And click on the shipping section CONTINUE button -o5a_shoprunnerGuest
Then I move on to the PAYMENT section -o5a_shoprunnerGuest

Scenario: guest checkout – input PAYMENT info
Given I am on the PAYMENT section -o5a_shoprunnerGuest
When I enter Credit Card Number, Exp date, CVC, Name -o5a_shoprunnerGuest
And click on the payment section CONTINUE button -o5a_shoprunnerGuest
Then I move on to the SHIPPING METHOD section -o5a_shoprunnerGuest

Scenario: place order and reach the THANK YOU PAGE w order confirmation number
Given I am on the CHECKOUT page -o5a_shoprunnerGuest
Then FREE SHIPPING appears under both order summary and shipping method -o5a_shoprunnerGuest
When I click on the PLACE ORDER button -o5a_shoprunnerGuest
Then I should be redirected to THANK YOU page -o5a_shoprunnerGuest
And there should be an Order number -o5a_shoprunnerGuest