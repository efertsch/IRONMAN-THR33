class CreateRounds < ActiveRecord::Migration
  def change
  	create_table :rounds do |t|
  		t.string :score, null: false 
  		t.string :maximum_potential_score, null: false
  		t.references :deck
  		t.references :user

  		t.timestamps null: false
  	end 
  end
end
