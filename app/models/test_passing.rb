class TestPassing < ApplicationRecord
  SUCCESS_RATIO = 85
  MAX_PERCENTAGE = 100
  INCREMENT_AMOUNT = 1

  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true

  before_validation :before_validation_set_next_question_and_time
  before_create :before_create_set_time_control

  def accept!(answer_ids)
    if correct_answer?(answer_ids)
      self.correct_questions_counter += INCREMENT_AMOUNT
    end
    self.complete if self.time_over?
    save!
  end

  def number_questions
    test.questions.count
  end

  def remaining_questions
    questions = self.test.questions.order(:id).where('id > ?', self.current_question.id)
    complete if questions.empty?

    questions
  end

  def question_number
    number_questions - remaining_questions.count
  end

  def result_passage
    success_rate  = correct_questions_counter.to_f / number_questions * MAX_PERCENTAGE
  end

  def complete
    self.passed = true
    self.result = result_passage
    self.successful = successful?
  end

  def time_over?
    self.time_control <=  Time.now.in_time_zone.to_i
  end

  def successful?
    result_passage >= SUCCESS_RATIO
  end

  private

  def before_validation_set_next_question_and_time
    self.current_question =
      if self.new_record?
        test.questions.first
      else
        remaining_questions.first
      end
  end

  def before_create_set_time_control
    self.time_control = self.created_at + self.test.allotted_time
  end

  def correct_answer?(answer_ids)
    correct_answers.ids.sort == answer_ids.to_a.map(&:to_i).sort
  end

  def correct_answers
    current_question.answers.correct
  end
end
