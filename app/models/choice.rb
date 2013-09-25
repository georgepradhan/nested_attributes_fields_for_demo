class Choice < ActiveRecord::Base
  attr_accessible :title, :question_id

  validates :title, presence: true
  belongs_to :question
end
