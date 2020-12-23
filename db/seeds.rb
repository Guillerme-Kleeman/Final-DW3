# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Marca.create([  { nombre: 'Pepsi' }, 
                { nombre: 'Doritos' }, 
                { nombre: 'NVIDIA' }])

Rubro.create([ { nombre: 'Verduras', perecedero: true }, 
                { nombre: 'Gaseosas', perecedero: false }, 
                { nombre: 'Snacks', perecedero: false }, 
                { nombre: 'Ventiladores', perecedero: true }, 
                { nombre: 'Herramientas', perecedero: false }])

Producto.create([   { nombre: 'Mirinda Naranja', cantidad_minima: 6, cantidad_actual: 10, precio: 5000, marca_id: '1', rubro_id: '2', activo: true },
                    { nombre: 'Doritos 3D Crunch', cantidad_minima: 0, cantidad_actual: 100, precio: 11000, marca_id: 2, rubro_id: '3', activo: true },
                    { nombre: 'NVIDIA GeForce RTX 3080', cantidad_minima: 1, cantidad_actual: 0, precio: 9000000, marca_id: 3, rubro_id: 4, activo: false },
                    { nombre: '7-Up', cantidad_minima: 6, cantidad_actual: 10, precio: 5000, marca_id: '1', rubro_id: '2', activo: true },
                    { nombre: 'Doritos 4D Crunch', cantidad_minima: 0, cantidad_actual: 100, precio: 11000, marca_id: 2, rubro_id: '3', activo: true }])
