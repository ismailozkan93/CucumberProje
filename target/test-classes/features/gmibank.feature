Scenario Outline: TC001 Verify that with same and current password generates error message
When user navigates to "Sign in" page under account menu icon
And user types and submit the valid "<user>" credentials
Then newpassword
Then renewpassword





Feature: Password rules

 Scenario Outline: US_008 TC_002 verifying that user not able to change password with 1-3 chars
  Given user sign in to the system as "customer"
  When user navigates to "Password" page under account menu icon
  When user types a "newpassword" "<password>"
  Then verify that a message is displayed such as "Your password is required to be at least 4 characters."
  Examples:
   | password |
   | Q12      |
   | wer      |
   | **       |
   | A        |
 Scenario Outline: US_008 TC_003 verifying that user able to change password
 with 4-6 chars without error and with 1 light
  Given user sign in to the system as "customer"
  When user navigates to "Password" page under account menu icon
  When user types a "newpassword" "<password>" pres TAB
  Then verify that no message is displayed and 1 led lighting
  When user types a "newpassword" "<password>" pres TAB and click on Save
  Then verify that message in the left side "Password changed"

  Examples:
   | password |
   | As12     |
   | a12*w    |
   | *12.)O   |

 Scenario Outline: US_008 TC_004 verifying that user able to change with
 >= 7 chars (composed of 4 different types) without error and with 5 light
  Given user sign in to the system as "customer"
  When user navigates to "Password" page under account menu icon
  When user types a "newpassword" "<password>" pres TAB
  Then verify that no message is displayed and 5 led lighting
  When user types a "newpassword" "<password>" pres TAB and click on Save
  Then verify that message in the left side "Password changed"

  Examples:
   | password     |
   | As12*er      |
   | a12*wQ.nkvns |
   | *12.)O 1Qq   |


 Scenario Outline: US_008 TC_005 Verify that user able to change with >= 7 chars
 (composed of 3 different types), does not generate error message and
 shows 4 lights after providing all required information
  Given user sign in to the system as "customer"
  When user navigates to "Password" page under account menu icon
  When user types a "newpassword" "<password>" pres TAB
  Then verify that no message is displayed and 4 led lighting
  When user types a "newpassword" "<password>" pres TAB and click on Save
  Then verify that message in the left side "Password changed"

  Examples:
   | password |
   | As12345  |
   | a*)ert2  |
   | 12)/QER  |

 Scenario Outline: US_008 TC_006 Verify that user able to change with >= 7 chars ,
 composed of 2 different types, does not generate error message
 and shows 2 lights after providing all required information
  Given user sign in to the system as "customer"
  When user navigates to "Password" page under account menu icon
  When user types a "newpassword" "<password>" pres TAB
  Then verify that no message is displayed and 2 led lighting
  When user types a "newpassword" "<password>" pres TAB and click on Save
  Then verify that message in the left side "Password changed"
  Examples:
   | password      |
   | Asdjfkjssvs   |
   | a*)ancna)))__ |
   | 12QDCSVSVSSVS |

 Scenario Outline: US_008 TC_007 Verify that user able to change with >= 7 chars,
 composed of 1 different types, does not generate error message and shows 1 lights
 after providing all required information
  Given user sign in to the system as "customer"
  When user navigates to "Password" page under account menu icon
  When user types a "newpassword" "<password>" pres TAB
  Then verify that no message is displayed and 2 led lighting
  When user types a "newpassword" "<password>" pres TAB and click on Save
  Then verify that message in the left side "Password changed"

  Examples:
   | password       |
   | ADFSDSSSGSG    |
   | sdkjsjsnvnskmn |
   | 01233456       |

 /* (IPTAL)*/
 Scenario:US_008 TC009 Verify with different different Password from current password,is accepted
  And user types a "Current password" and press TAB
  And user types a "New password" and press TAB
  And user types a "New password Confirmation" "123" and press ENTER

  Scenario:US_008 TC010 Verify with different same Password with current password,is accepted(*BUG*)
   And user types a "Current password" and press TAB
   And user types a "New password" and press TAB
   And user types a "New password Confirmation" "123" and press ENTER

 Scenario: US_008 TC011 Verify with different password from current password generates
 error message("An error has occured! The password could not be changed.")
  And user types a "Current password" and press TAB  (Different from current)
  And user types a "New password" and press TAB      (same pass)
  And user types a "New password Confirmation" "123" and press ENTER (same pass)

 Scenario: US_008 TC012 Verify with different password from new password generates
  error message("The password and its confirmation do not match!")
  And user types a "Current password" and press TAB
  And user types a "New password" and press TAB
  And user types a "New password Confirmation" "123" and press ENTER


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

 Scenario:  US/007 TC006 "US_007 TC004 Verify language only Turkish and English options
  Given user sign in to the system as "customer"
  When user navigates to "User Info" page under account menu icon
  And user types a valid "Firstname" pres TAB and valid "Lastname"pres TAB valid email pres TAB
  And user verify that 2 languages options

