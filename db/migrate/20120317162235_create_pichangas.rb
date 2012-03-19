class CreatePichangas < ActiveRecord::Migration
  def change
    create_table :pichangas do |t|
      t.string :titulo
      t.integer :nrojugadores
      t.decimal :precio
      t.integer :nrohoras
      t.datetime :fechainicio
      t.datetime :fechafin
      t.string :comentario
      t.string :estado
      t.references :cancha
      t.references :jugador
      t.timestamps
    end
  end
end
