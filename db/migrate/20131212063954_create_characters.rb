class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.integer :movie_id
      t.string :name

      t.timestamps
    end
  end
end
