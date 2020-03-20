class CreatePeopleAndCatsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string 'name'
      t.integer 'age'
      t.timestamps
    end

    create_table :cats do |t|
      t.string 'name'
      t.string 'favorite_food'
      t.integer 'age'
      t.integer 'person_id'
      t.timestamps
    end
  end
end
