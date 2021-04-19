class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birthdate
      t.string :nationality
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
