class Question < ActiveRecord::Base
  attr_accessible :title, :poll_id, :choices_attributes
  validates :title, presence: true

  belongs_to :poll

  has_many :choices
  accepts_nested_attributes_for :choices

end
