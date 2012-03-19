class CreateJugadors < ActiveRecord::Migration
  def change
    create_table :jugadors do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
