Feature: View for the students test 2

Background: evaluations in database
  Given the following students exist:
  | uin          | name            | section      |    attempts  | score|last_start              |last_end                |created_at |updated_at|
  | 123000123    | Ruth Morris     | 500          |   0          |  -1  |2018-03-10 17:00:00 UTC |2018-03-10 20:00:00 UTC |           |          |
  
  Given the following questions exist:
  | qid   | content                               | answer|c1     | c2   | c3    | c4    | c5    |c1_count|c2_count|c3_count|c4_count|c5_count| numAnswers |
  | 1002  | "What is the color of the blood?"     | Green | Green | Pink |"White"|"Blue" |"Red"  |0       |0       |0       |0       |0       | 5          |
  | 1003  | "What is the color of the hair?"      | Black | Black | Pink |"White"|"Blue" |"Red"  |0       |0       |0       |0       |0       | 5          |
  | 1004  | "What is the color of the blood2?"    | Green | Green | Pink |"White"|"Blue" |"Red"  |0       |0       |0       |0       |0       | 5          |
  | 1005  | "What is the color of the hair3?"     | Black | Black | Pink |"White"|"Blue" |"Red"  |0       |0       |0       |0       |0       | 5          |
  | 1006  | "What is the color of the blood4?"    | Green | Green | Pink |"White"|"Blue" |"Red"  |0       |0       |0       |0       |0       | 5          |
  | 1007  | "What is the color of the hair5?"     | Red   | Black | Pink |"White"|"Blue" | Red  |0       |0       |0       |0       |0       | 5          |

 
  Given the following evaluations exist:
  | eid        | title            |access_code         | content                              | scales |
  | 1          | Evaluation 1     |CSCE120             | ["What is the color of the blood?"]  | [1, 2, 3, 4, 5] |
  
  Given the following instructions exist:
  |content                  |
  |"This exam is not timed" |

Scenario: view for the student's test
  Given I am on the home page
  And I follow "For Students"
  Then I should be on the student login page
  And I fill in "uin" with "123000123"
  And I press "Login"
  Then I should be on the student personal page
  And I fill in "access_code" with "CSCE120"
  And I press "Begin"
  When I am on the student questions page
  Then I should see "What is the color of the blood?"
  And  I should see "Green"
  And  I should see "Pink"
  And  I should see "White"
  And  I should see "Blue"
  And  I should see "Red"
  When I choose "choice_1"
  And I press "Submit"
  Then I should be on the student personal page
  
Scenario: view for the student's test2
  Given I am on the home page
  And I follow "For Students"
  Then I should be on the student login page
  And I fill in "uin" with "123000123"
  And I press "Login"
  Then I should be on the student personal page
  And I fill in "access_code" with "CSCE120"
  And I press "Begin"
  When I am on the student questions page
  Then I should see "What is the color of the blood?"
  And  I should see "Green"
  And  I should see "Pink"
  And  I should see "White"
  And  I should see "Blue"
  And  I should see "Red"
  When I choose "choice_2"
  And I press "Submit"
  Then I should be on the student personal page
  
Scenario: view for the student's test3
  Given I am on the home page
  And I follow "For Students"
  Then I should be on the student login page
  And I fill in "uin" with "123000123"
  And I press "Login"
  Then I should be on the student personal page
  And I fill in "access_code" with "CSCE120"
  And I press "Begin"
  When I am on the student questions page
  Then I should see "What is the color of the blood?"
  And  I should see "Green"
  And  I should see "Pink"
  And  I should see "White"
  And  I should see "Blue"
  And  I should see "Red"
  When I choose "choice_3"
  And I press "Submit"
  Then I should be on the student personal page

Scenario: view for the student's test4
  Given I am on the home page
  And I follow "For Students"
  Then I should be on the student login page
  And I fill in "uin" with "123000123"
  And I press "Login"
  Then I should be on the student personal page
  And I fill in "access_code" with "CSCE120"
  And I press "Begin"
  When I am on the student questions page
  Then I should see "What is the color of the blood?"
  And  I should see "Green"
  And  I should see "Pink"
  And  I should see "White"
  And  I should see "Blue"
  And  I should see "Red"
  When I choose "choice_4"
  And I press "Submit"
  Then I should be on the student personal page
  
Scenario: view for the student's test5
  Given I am on the home page
  And I follow "For Students"
  Then I should be on the student login page
  And I fill in "uin" with "123000123"
  And I press "Login"
  Then I should be on the student personal page
  And I fill in "access_code" with "CSCE120"
  And I press "Begin"
  When I am on the student questions page
  Then I should see "What is the color of the blood?"
  And  I should see "Green"
  And  I should see "Pink"
  And  I should see "White"
  And  I should see "Blue"
  And  I should see "Red"
  When I choose "choice_5"
  And I press "Submit"
  Then I should be on the student personal page
  
  Then I follow "About Us"