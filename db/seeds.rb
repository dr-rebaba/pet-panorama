Product.destroy_all
User.destroy_all

# Leo es vendedor
require "open-uri"
puts "Creando usuarios"

user1 = User.create(
  email: 'leo.diaz.trejo@gmail.com',
  password: '123456',
  name: 'Leo',
  last_name: 'Diaz'
)
file = URI.open("https://avatars.githubusercontent.com/u/142075557?v=4")
user1.photo.attach(io: file, filename: "leo.png", content_type: "image/png")
# Antonio es comprador
user1.save
puts "El usuario #{user1.name} se a creado correctamente"

user2 = User.create(
  email: 'antoniovillalobos@gmail.com',
  password: '123456',
  name: 'Antonio',
  last_name: 'Villalobos'
)

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1676405509/obzjnjjiruvajinkvmsl.jpg")
user2.photo.attach(io: file, filename: "antonio.png", content_type: "image/png")
user2.save
puts "El usuario #{user2.name} se a creado correctamente"
# Marco es vendedor y comprador

user3 = User.create(
  email: 'marco.soria@pucp.edu.pe',
  password: '123456',
  name: 'Marco',
  last_name: 'Soria'
)

file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1691789898/y5axo3cnuidqdr4p6cpj.jpg")
user3.photo.attach(io: file, filename: "marco.png", content_type: "image/png")
user3.save
puts "El usuario #{user3.name} se a creado correctamente"
# Products

product1 = Product.new(
  title: 'Go Care Pet Shampoo',
  description: 'Shampoo Hipoalergénico de Romero y Aceite Esencial Melissa para Perros y Gatos - 100% Natural - Limpieza y Cuidado Integral para tu Mascota - 350ml',
  quantity: 10,
  price: 159.99,
  user: user1,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534961/Go_Care_PETShampoo_nhgrlj.jpg")
product1.photo.attach(io: file, filename: "shampoo.png", content_type: "image/png")
product1.save
puts "El producto #{product1.title} se a creado correctamente"

product2 = Product.new(
  title: 'Furhaven Large Dog Bed Trail Pup Travel',
  description: 'Alfombrilla de viaje plegable para perro es plegable y viene con una bolsa separada para portabilidad y fácil almacenamiento, por lo que es una opción ideal para viajes, senderismo, camping, picnics y otras actividades al aire libre',
  quantity: 8,
  price: 559.44,
  user: user3,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534930/furhaven_dog_bed_ruil6k.jpg")
product2.photo.attach(io: file, filename: "bed.png", content_type: "image/png")
product2.save
puts "El producto #{product2.title} se a creado correctamente"

product3 = Product.new(
  title: 'Juguetes para perro, 12 piezas',
  description: 'Juguete para Masticar, Juguete para Perros Molar de Goma Duradero, Utilizado para Jugar, Limpiar Los Dientes, Juego de Juguetes para Perros, Juguete Interactivo para Perros, Adecuado para Juguetes para Masticar Perros Pequeños, Medianos y Grandes',
  quantity: 20,
  price: 365.03,
  user: user1,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534929/juguetes_para_perro_12_piezas_lxttuy.jpg")
product3.photo.attach(io: file, filename: "juguete.png", content_type: "image/png")
product3.save
puts "El producto #{product3.title} se a creado correctamente"

product4 = Product.new(
  title: 'Pelotas De Goma para Mascotas 3 Pack',
  description: 'Limpiar y Afilar Los Dientes De Las Mascotas, ZZBIFRJ Juguetes para Perro Resistentes a Los Mordiscos Adecuados para El Adiestramiento De Perros Pequeños y Grandes',
  quantity: 15,
  price: 159,
  user: user3,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534929/Pelotas_De_Goma_para_Mascotas_3_Pack_morc4u.jpg")
product4.photo.attach(io: file, filename: "pelota.png", content_type: "image/png")
product4.save
puts "El producto #{product4.title} se a creado correctamente"

product5 = Product.new(
  title: 'Whiskas',
  description: 'Alimento Húmedo para Gato Adulto con Sabor a Soufflé Parrillada Mixta, 85 gr x 24 uds, Morado',
  quantity: 50,
  price: 250.80,
  user: user1,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534929/Whiskas_lbwuhu.jpg")
product5.photo.attach(io: file, filename: "wiskas.png", content_type: "image/png")
product5.save
puts "El producto #{product5.title} se a creado correctamente"

product6 = Product.new(
  title: 'YOMYM Juguetes para Gatos2',
  description: 'Bola de Gato Interactiva Inteligente, 360 Grados Autogiratoria Juguete para Gatos, con Type C Recargable y Carcasa de Silicona Suave (Verde)',
  quantity: 15,
  price: 169,
  user: User.last,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534928/YOMYM_Juguetes_para_Gatos_xfh2y5.jpg")
product6.photo.attach(io: file, filename: "wiskas.png", content_type: "image/png")
product6.save
puts "El producto #{product6.title} se a creado correctamente"

product7 = Product.new(
  title: 'New World - Caja plegable de metal para perros',
  description: 'Una herramienta eficaz para el entrenamiento de comportamiento y un espacio personal para tu perro',
  quantity: 5,
  price: 835.32,
  user: user1,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534928/New_World_-_Caja_plegable_de_metal_para_perros_fyulzl.jpg")
product7.photo.attach(io: file, filename: "caja_plgable.png", content_type: "image/png")
product7.save
puts "El producto #{product7.title} se a creado correctamente"

product8 = Product.new(
  title: 'AFujia Transportín Perro Gato ',
  description: 'Bolsa Transporte Transpirable para Mascotas, Portador de Viaje con Correa de Hombro Ajustable, Transporte de Gato con Colchón Suave+Tazón-Color Negro-Talla S',
  quantity: 2,
  price: 729,
  user: user3,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534928/AFujia_Transport%C3%ADn_Perro_Gato_ve3nxk.jpg")
product8.photo.attach(io: file, filename: "bolsa.png", content_type: "image/png")
product8.save
puts "El producto #{product8.title} se a creado correctamente"

product9 = Product.new(
  title: 'Paquete de 2 juguetes grandes para masticar pájaros',
  description: 'Piedra de calcio para moler pico de loro, con campanas, accesorios de jaula para pájaros, juguetes de jaula para cacatúa, periquitos, rata, hámster, chinchilla, conejo, gris africano',
  quantity: 30,
  price: 384.10,
  user: user1,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534928/AFujia_Transport%C3%ADn_Perro_Gato_ve3nxk.jpg")
product9.photo.attach(io: file, filename: "juguetes2.png", content_type: "image/png")
product9.save
puts "El producto #{product9.title} se a creado correctamente"

product10 = Product.new(
  title: 'Correa para perro',
  description: 'Duradera y antideslizante de 4.4 pies, cómoda cuerda fuerte, correa antideslizante para perros grandes, medianos y pequeños, correa de entrenamiento para mascotas sin tirones, color rojo',
  quantity: 20,
  price: 299.99,
  user: user3,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534927/Correa_para_perro_tncuqp.jpg")
product10.photo.attach(io: file, filename: "correa.png", content_type: "image/png")
product10.save
puts "El producto #{product10.title} se a creado correctamente"

product11 = Product.new(
  title: 'Foam de limpieza en seco Gato Consentido 150ml',
  description: 'El Foam de Limpieza en Seco del Gato Consentido es el producto ideal para la higiene diaria de tu gato. Sin necesidad de mojar a tu gato lograrás mantener su pelaje limpio, brillante y sedoso. Además, previene la aparición de plagas indeseadas como pulgas, garrapatas y piojos. Su fórmula no tóxica, disuelve la mugre del pelo y piel sin afectarles, dejando un suave y agradable aroma.',
  quantity: 12,
  price: 84.69,
  user: user1,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701535403/Foam_de_limpieza_en_seco_Gato_Consentido_150ml_po7lmy.jpg")
product11.photo.attach(io: file, filename: "foam.png", content_type: "image/png")
product11.save
puts "El producto #{product11.title} se a creado correctamente"

product12 = Product.new(
  title: '10 PCS Paquete de Rascadores para Gatos',
  description: 'Nuestro protector de sofá contra arañazos de gatos se puede usar en cualquier lugar donde su gato pueda arañar. Este fuerte protector contra arañazos no solo es adecuado para sofás, sino también para cortinas, puertas, mesas, pisos y más. El protector de sofá para arañazos de gatos le sirve no solo para gatos, sino también a otras mascotas como los perros.',
  quantity: 4,
  price: 219.99,
  user: user3,
)

file = URI.open("https://res.cloudinary.com/dyx9c9mym/image/upload/v1701535436/10_PCS_Paquete_de_Rascadores_para_Gatos_jumh9l.jpg")
product12.photo.attach(io: file, filename: "rascador.png", content_type: "image/png")
product12.save
puts "El producto #{product12.title} se a creado correctamente"

# Orders

# Order.create(status: 1, date: Date.new(2023, 11, 25), user_id: 3)
# Order.create(status: 2, date: Date.new(2023, 8, 13), user_id: 2)
# Order.create(status: 3, date: Date.new(2023, 11, 15), user_id: 3)
# Order.create(status: 1, date: Date.new(2023, 11, 3), user_id: 3)
# Order.create(status: 2, date: Date.new(2023, 10, 28), user_id: 3)
# Order.create(status: 3, date: Date.new(2023, 11, 30), user_id: 2)
