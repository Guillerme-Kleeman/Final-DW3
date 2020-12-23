class CreateMarcas < ActiveRecord::Migration[6.0]
  def change
    create_table :marcas do |t|
      t.string :nombre, index: {unique: true}

      t.timestamps
    end
  end
end
