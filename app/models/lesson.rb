class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :number, :presence => true, numericality: {only_integer: true}
  validates :context, :presence => true
end