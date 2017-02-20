helpers do
  def correct?(user_input)
  	if user_input == @card.answer
  		Round.score
  	else
  		nil
  end

end
