class Lesson < ActiveRecord::Base
  validates :name, :presence => true
  validates :number, :presence => true, numericality: {only_integer: true}
  validates_uniqueness_of :number
  validates :context, :presence => true
  belongs_to :section

  default_scope { order(number: :asc) }

  def next
    next_lesson = Lesson.where("number > ?", self.number).first
  end

  def prev
    prev_lesson = Lesson.where("number < ?", self.number).last
  end

end
