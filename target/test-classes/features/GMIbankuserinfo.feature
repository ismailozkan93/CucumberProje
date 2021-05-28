
@info
Scenario: US/007 TC001 Verify email without "@" generates error message
("This field is invalid")
Given user sign in to the system as "customer"
When user navigates to "User Info" page under account menu icon
And user types a valid "Firstname" and "Lastname" pres TAB
And user types a email without "@"
And verify that a message is displayed such as "This field is invalid"

Scenario: US/007 TC002 Verify email without ".com" generates error message
("This field is invalid")

Given user sign in to the system as "customer"
When user navigates to "User Info" page under account menu icon
And user types a valid "Firstname" and "Lastname"pres TAB
And user types a email without "group.com"
And verify that a message is displayed such as "This field is invalid"

Scenario:  US/007 TC003 Verify email only "@" and  "group.com" generates error message
("This field is invalid")

Given user sign in to the system as "customer"
When user navigates to "User Info" page under account menu icon
And user types a valid "Firstname" and "Lastname"pres TAB
And user types a only "@group.com"
And verify that a message is displayed such as "This field is invalid"

Scenario:  US/007 TC004 Verify email only "@" and  "group.com" generates error message
Given user sign in to the system as "customer"
When user navigates to "User Info" page under account menu icon
And user types a valid "Firstname" and "Lastname"pres TAB
And user types a only "@group.com"
And verify that a message is displayed such as "This field is invalid"

Scenario:  US/007 TC005 Verify valid email doesn't generates error message
Given user sign in to the system as "customer"
When user navigates to "User Info" page under account menu icon
And user types a valid "Firstname" and "Lastname"pres TAB
And user types a only valid email

Scenario:  US/007 TC006 "US_007 TC006 Verify language only Turkish and English options
Given user sign in to the system as "customer"
When user navigates to "User Info" page under account menu icon
And user types a valid "Firstname" pres TAB and valid "Lastname"pres TAB valid email pres TAB
And user verify that 2 languages options

