Feature: The index page
  In order to discover events
  The users
  Should be able to see events

Scenario: The application has an index page displaying events
  Given the following event:
  |title|creator|short_description|long_description|location|start_time|end_time|category|
  |Massive party |yourneighbour|a really good party|a really very good party|ungdomshuset|DateTime.new|DateTime.new|party|
  When a user visits the home page
  Then the text "Massive party" should be visible
  But the text "a really good party" should be hidden