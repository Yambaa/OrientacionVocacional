class Question < ActiveRecord::Base
  validates :text, :degree_id, presence: true
  
  has_many :answers
  belongs_to :degree
end
