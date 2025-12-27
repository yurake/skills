# Copy/paste template for quick start
# Tags: adjust as needed (@smoke, @security, @wip, @critical)

@smoke
Feature: <Feature name>
  In order to <business goal>
  As a <role/stakeholder>
  I want <capability/benefit>

  Rule: <optional business rule>

    Scenario: <happy path>
      Given <precondition in business terms>
      And <optional additional precondition>
      When <action in business terms>
      Then <expected outcome>
      And <secondary outcome>

    # Edge case example (duplicate/invalid/missing)
    # Scenario: <edge case>
    #   Given <context>
    #   When <action>
    #   Then <expected outcome>
