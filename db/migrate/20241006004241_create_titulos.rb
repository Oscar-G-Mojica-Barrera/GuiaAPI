class CreateTitulos < ActiveRecord::Migration[7.1]
  def change
    create_table :titulos do |t|
      t.references :player, null: false, foreign_key: true
      t.string :tipo
      t.integer :count

      t.timestamps
    end
  end
end
