class CreateDetallepichangas < ActiveRecord::Migration
  def change
    create_table :detallepichangas do |t|
      t.decimal :montojugador
      t.boolean :flagparticipo
      t.references :pichanga
      t.references :jugador
      t.timestamps
    end
  end
end
