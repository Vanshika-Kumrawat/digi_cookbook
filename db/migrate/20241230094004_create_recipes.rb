class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :instructions
      t.string :cuisine
      t.integer :cooking_time
      t.timestamps
    end
  end
end
