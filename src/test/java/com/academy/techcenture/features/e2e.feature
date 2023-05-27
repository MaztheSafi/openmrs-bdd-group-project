@E2E_Test
Feature: OpenMRS E2E_Test Feature
Background: Login Background Steps
Given user is already logged

#  7. On the registration page, very the title and fill out the demographics, contact info, relationships sections
#  8. Once you have filled out the sections, verify once again the patient information is correct before clicking the confirm button.

Scenario Outline: User Registration
When user is on register a patient page
And user enters "<first_name>" in the firstname input
And user enters "<last_name>" in the lastname input
And user selects "<gender>"
And user enters "<day>" in the day input
And user selects "<month>" from the month list
And user enters "<year>" in the year input
And user enters "<street_address>" and "<city>" and "<state>" and "<country>" and "<postal_code>"
And user enters "<phone>" number
And user enters "<relationship_type>" and "<relative_name>" on this page
And user verifies all of the information
And user clicks confirm button
  And user verifies top section
  And user create a sticky note message
  And user verifies all of the visible components
  And back to home page
  And user is on home page
  And user clicks on Find Patient Record tab
  And user searches patient by its ID
  And user verifies found information
  Then user goes back to home page

Examples:
|first_name | last_name |gender   | day  | month   | year  |street_address | city | state | country | postal_code | phone       |relationship_type | relative_name |
|Kevin        | Lee  |    Male    |1     | January | 1980  | 1 Main St     | Apex | NC    | USA     | 27523       |555-555-5555 |Doctor            | John          |
|Barbara      | Lee  | Female     |5     | March   | 1985  | 1 Main St     | Apex | NC      | USA     | 27523     |555-555-7777 |Doctor            | Wendy          |