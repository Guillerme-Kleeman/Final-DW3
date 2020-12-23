class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :cantidad_minima
      t.integer :cantidad_actual
      t.float :precio
      t.bigint :marca_id
      t.bigint :rubro_id
      t.boolean :activo

      t.timestamps
    end
    add_foreign_key :productos, :marcas
    add_foreign_key :productos, :rubros
  end
end
