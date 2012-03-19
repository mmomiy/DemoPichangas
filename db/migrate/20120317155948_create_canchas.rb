class CreateCanchas < ActiveRecord::Migration
  def change
    create_table :canchas do |t|
      t.string :nombre
      t.string :direccion
      t.float :latitud
      t.float :longitud
      t.string :foto
      t.references :distrito
      t.decimal :preciohora
      t.timestamps
    end
  end
end
