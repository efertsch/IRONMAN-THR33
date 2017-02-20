class Round < ActiveRecord::Base
  belongs_to :user
  belongs_to :deck

  attr_accessor :score

  score = 0

  def count
  	score += 1
  end

  def score
  		Round.update(1, :score => score += 1)
  end

end
