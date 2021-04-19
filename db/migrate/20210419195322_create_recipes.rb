class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.boolean :featured
      t.text :ingredients
      t.text :steps
      t.datetime :submit_date
      t.string :image_url
      t.references :author, foreign_key: true
      t.references :category, foreign_key: true
      t.references :recipe_type, foreign_key: true

      t.timestamps
    end
  end
end
