@tag
Feature: As a Student
  I want to submit the deliverable from my class

  @submit_success
  Scenario Outline: Student submit the deliverable success
    Given A student <stu_id> check all deliverable sections for the course <class_id>
    And The Student choose a section <deliverable_id> and file to submit
    When It is before the deadline
    And The student click submit
    Then The student submit success

    Examples:
      | stu_id  | class_id | deliverable_id |
      | 3000382 | 1076     | 199            |

  @submit_fail
  Scenario Outline: Professor tries to submit the grade to a invalid submission, and fails to do so
    Given A student <stu_id> check all deliverable sections for the course <class_id>
    And The Student choose a section <deliverable_id> and file to submit
    When It is before the deadline
    And The student click submit
    Then The student submit failed

    Examples:
      | stu_id  | class_id | deliverable_id |
      | 2000006 | 1076     | 198            |