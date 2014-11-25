class Answer < ActiveRecord::Base
  validates :text, :question_id, :score, presence: true
  validates :score, numericality: {greater_than: 0}

  belongs_to :question
  belongs_to :degree
  has_one :next, class_name: :Question, foreign_key: :next_id
end
