require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
  it { should validate_numericality_of(:number).only_integer }
  it { should validate_presence_of :context}
end