class Card < ActiveRecord::Base
  belongs_to :deck

  def increment
  	current = self.id
  	current + 1
  end
end
