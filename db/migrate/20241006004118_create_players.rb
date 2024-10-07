class CreatePlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :players do |t|
      t.string :nombre
      t.integer :numero
      t.string :equipo

      t.timestamps
    end
  end
end
