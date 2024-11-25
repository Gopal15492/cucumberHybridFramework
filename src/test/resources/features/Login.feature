
Feature: User Login
 Registered as a user

#Background:  Given User navigates to login page
  
  Scenario Outline: Login with valid credential
    Given User navigates to login page
    When User enters valid email address <username> into email field
And User enters valid password <password> into password field
And User clicks on Login button
Then User should get successfully logged in

Examples:
|username                            |    password   |
|Gopalade25@gmail.com |    Gopal@123|
#|aGopal@gmail.com           |12345|
#|amotooricap3@gmail.com|12345|

 Scenario: Login with invalid credentials
Given User navigates to login page
When User enters invalid email address into email field
And User enters invalid password "1234567890" into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch
    

Scenario: Login with valid email and invalid password
Given User navigates to login page
When User enters valid email address "Gopalade25@gmail.com" into email field
And User enters invalid password "1234567890" into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch
    
  Scenario: Login with invalid email and valid password
Given User navigates to login page
When User enters invalid email address into email field
And User enters valid password "Gopal@123" into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch

Scenario: Login without providing any credentails
Given User navigates to login page
When User dont enter email address into email field
And User dont enter password into password field
And User clicks on Login button
Then User should get a proper warning message about credentials mismatch 
 
