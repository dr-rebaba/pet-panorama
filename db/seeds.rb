# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Users

# Leo es vendedor
User.create(
  email: 'leo.diaz.trejo@gmail.com',
  password: 'zyendfowlv-7D',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil
)

# Antonio es comprador
User.create(
  email: 'antoniovillalobos@gmail.com',
  password: 'vbiuanej7-4d',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil
)

# Marco es vendedor y comprador
User.create(
  email: 'marco.soria@pucp.edu.pe',
  password: 'FF56-89erf',
  reset_password_token: nil,
  reset_password_sent_at: nil,
  remember_created_at: nil
)

# Products

Product.create(
  title: 'Go Care Pet Shampoo',
  description: 'Shampoo Hipoalergénico de Romero y Aceite Esencial Melissa para Perros y Gatos - 100% Natural - Limpieza y Cuidado Integral para tu Mascota - 350ml',
  quantity: 10,
  price: 159.99,
  user_id: 1
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 3
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 1
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 3
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 1
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 3
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 1
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 3
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 1
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 3
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 1
)

Product.create(
  title:
  description:
  quantity:
  price:
  user_id: 3
)
