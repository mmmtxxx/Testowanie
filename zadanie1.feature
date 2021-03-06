Feature: authenticate to the application
Background:
	Given I am registered user
Scenario: successful authenticate to the application
	Given I am on login page
	When I fill login field with e-mail: monikawiklinska@gmail.com
	And fill password 123456
	Then I can see validation message
	And I can see my account details – name, surname, email address, mailing adres

Feature: authenticate to the application
Scenario: unsuccesful authenticate to the application
	Given I am on login page
	When I fill login field with e-mail: monikawiklinska@gmail.com
	And fill password 123456
	Then I can see error message "Authentication failed. Login or password are incorrect.”
	And I can not see my account details
Feature: authenticate to the application
Background:
	Given I am registered user
Scenario Outline: unsuccesful authenticate to the application
	Given I am on login page
	When I fill login field with <login> 
	And fill <password> 
	Then I can see error message "Authentication failed. Login or password are incorrect.”
	And I can not see my account details 
Examples:
| login								| password	|
| monikawiklinska.gmail.com					| 123456	|
| monika							| 123456	|
| monikawiklinska@gmail						| 123456	|
| monikawiklinska@com.						| 123456	|
| monikawiklinska@gmailcom					| 123456	|
| monikawiklinskamonikawiklinskamonikawiklinskamonika@gmail.com	| 123456	|
|								| 123456	|
| monikawiklinska@gmail.com					|		|

Feature: authenticate to the application
Background:
	Given I am registered user
Scenario: successful authenticate to the application
	Given I am on login page
	When I fill login field with e-mail: monikawiklinska@gmail.com
	And fill password 123456
	Then I can see validation message
	But I can not see my account details – name, surname, email address, mailing adres