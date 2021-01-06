# This file was autogenerated on: 20201023121019795
Feature: PropertyPowerProduction

  Background:
    Given a RESOScript or Metadata file are provided
    When a RESOScript file is provided
    Then Client Settings and Parameters can be read from the RESOScript
    And a test container was successfully created from the given RESOScript file
    And the test container uses an Authorization Code or Client Credentials for authentication
    And valid metadata were retrieved from the server
    When a metadata file is provided
    Then a test container was successfully created from the given metadata file
    And valid metadata are loaded into the test container

  @PropertyPowerProduction
  Scenario: ListingId
    When "ListingId" exists in the "PropertyPowerProduction" metadata
    Then "ListingId" MUST be "String" data type
    And the following synonyms for "ListingId" MUST NOT exist in the metadata
      | MLNumber |
      | MLSNumber |
      | ListingNumber |
    And "ListingId" length SHOULD be equal to the RESO Suggested Max Length of 255

  @PropertyPowerProduction
  Scenario: ListingKey
    When "ListingKey" exists in the "PropertyPowerProduction" metadata
    Then "ListingKey" MUST be "String" data type
    And the following synonyms for "ListingKey" MUST NOT exist in the metadata
      | SystemUniqueID |
      | ImmediateSourceID |
    And "ListingKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @PropertyPowerProduction
  Scenario: ListingKeyNumeric
    When "ListingKeyNumeric" exists in the "PropertyPowerProduction" metadata
    Then "ListingKeyNumeric" MUST be "Integer" data type
    And the following synonyms for "ListingKeyNumeric" MUST NOT exist in the metadata
      | SystemUniqueID |
      | ImmediateSourceID |

  @PropertyPowerProduction
  Scenario: ModificationTimestamp
    When "ModificationTimestamp" exists in the "PropertyPowerProduction" metadata
    Then "ModificationTimestamp" MUST be "Timestamp" data type

  @PropertyPowerProduction
  Scenario: PowerProductionAnnual
    When "PowerProductionAnnual" exists in the "PropertyPowerProduction" metadata
    Then "PowerProductionAnnual" MUST be "Integer" data type

  @PropertyPowerProduction
  Scenario: PowerProductionAnnualStatus
    When "PowerProductionAnnualStatus" exists in the "PropertyPowerProduction" metadata
    Then "PowerProductionAnnualStatus" MUST be "Single Enumeration" data type
    And "PowerProductionAnnualStatus" MUST contain at least one of the following standard lookups
      | lookupValue | lookupDisplayName |
      | Actual | Actual |
      | Estimated | Estimated |
      | PartiallyEstimated | Partially Estimated |
    And "PowerProductionAnnualStatus" MUST contain only standard enumerations

  @PropertyPowerProduction
  Scenario: PowerProductionKey
    When "PowerProductionKey" exists in the "PropertyPowerProduction" metadata
    Then "PowerProductionKey" MUST be "String" data type
    And "PowerProductionKey" length SHOULD be equal to the RESO Suggested Max Length of 255

  @PropertyPowerProduction
  Scenario: PowerProductionKeyNumeric
    When "PowerProductionKeyNumeric" exists in the "PropertyPowerProduction" metadata
    Then "PowerProductionKeyNumeric" MUST be "Integer" data type

  @PropertyPowerProduction
  Scenario: PowerProductionSize
    When "PowerProductionSize" exists in the "PropertyPowerProduction" metadata
    Then "PowerProductionSize" MUST be "Decimal" data type
    And "PowerProductionSize" precision SHOULD be equal to the RESO Suggested Max Precision of 5
    And "PowerProductionSize" scale SHOULD be equal to the RESO Suggested Max Scale of 2

  @PropertyPowerProduction
  Scenario: PowerProductionType
    When "PowerProductionType" exists in the "PropertyPowerProduction" metadata
    Then "PowerProductionType" MUST be "Single Enumeration" data type
    And "PowerProductionType" MAY contain any of the following standard lookups
      | lookupValue | lookupDisplayName |
      | Photovoltaics | Photovoltaics |
      | Wind | Wind |
    But "PowerProductionType" MUST NOT contain any similar lookups

  @PropertyPowerProduction
  Scenario: PowerProductionYearInstall
    When "PowerProductionYearInstall" exists in the "PropertyPowerProduction" metadata
    Then "PowerProductionYearInstall" MUST be "Integer" data type