class Degree < ActiveRecord::Base
  validates :name, :description, presence: true

  has_many :questions
  has_many :answers
end
