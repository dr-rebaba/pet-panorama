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
  user_id: 1,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534961/Go_Care_PETShampoo_nhgrlj.jpg'
)

Product.create(
  title: 'Furhaven Large Dog Bed Trail Pup Travel',
  description: 'Alfombrilla de viaje plegable para perro es plegable y viene con una bolsa separada para portabilidad y fácil almacenamiento, por lo que es una opción ideal para viajes, senderismo, camping, picnics y otras actividades al aire libre',
  quantity: 8,
  price: 559.44,
  user_id: 3,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534930/furhaven_dog_bed_ruil6k.jpg'
)

Product.create(
  title: 'Juguetes para perro, 12 piezas',
  description: 'Juguete para Masticar, Juguete para Perros Molar de Goma Duradero, Utilizado para Jugar, Limpiar Los Dientes, Juego de Juguetes para Perros, Juguete Interactivo para Perros, Adecuado para Juguetes para Masticar Perros Pequeños, Medianos y Grandes',
  quantity: 20,
  price: 365.03,
  user_id: 1,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534929/juguetes_para_perro_12_piezas_lxttuy.jpg'
)

Product.create(
  title: 'Pelotas De Goma para Mascotas 3 Pack',
  description: 'Limpiar y Afilar Los Dientes De Las Mascotas, ZZBIFRJ Juguetes para Perro Resistentes a Los Mordiscos Adecuados para El Adiestramiento De Perros Pequeños y Grandes',
  quantity: 15,
  price: 159,
  user_id: 3,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534929/Pelotas_De_Goma_para_Mascotas_3_Pack_morc4u.jpg'
)

Product.create(
  title: 'Whiskas',
  description: 'Alimento Húmedo para Gato Adulto con Sabor a Soufflé Parrillada Mixta, 85 gr x 24 uds, Morado',
  quantity: 50,
  price: 250.80,
  user_id: 1,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534929/Whiskas_lbwuhu.jpg'
)

Product.create(
  title: 'YOMYM Juguetes para Gatos',
  description: 'Bola de Gato Interactiva Inteligente, 360 Grados Autogiratoria Juguete para Gatos, con Type C Recargable y Carcasa de Silicona Suave (Verde)',
  quantity: 15,
  price: 169,
  user_id: 3,
  photo: ''https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534928/YOMYM_Juguetes_para_Gatos_xfh2y5.jpg''
)

Product.create(
  title: 'New World - Caja plegable de metal para perros',
  description: 'Una herramienta eficaz para el entrenamiento de comportamiento y un espacio personal para tu perro',
  quantity: 5,
  price: 835.32,
  user_id: 1,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534928/New_World_-_Caja_plegable_de_metal_para_perros_fyulzl.jpg'
)

Product.create(
  title: 'AFujia Transportín Perro Gato ',
  description: 'Bolsa Transporte Transpirable para Mascotas, Portador de Viaje con Correa de Hombro Ajustable, Transporte de Gato con Colchón Suave+Tazón-Color Negro-Talla S',
  quantity: 2,
  price: 729,
  user_id: 3,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534928/AFujia_Transport%C3%ADn_Perro_Gato_ve3nxk.jpg'
)

Product.create(
  title: 'Paquete de 2 juguetes grandes para masticar pájaros',
  description: 'Piedra de calcio para moler pico de loro, con campanas, accesorios de jaula para pájaros, juguetes de jaula para cacatúa, periquitos, rata, hámster, chinchilla, conejo, gris africano',
  quantity: 30,
  price: 384.10,
  user_id: 1,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534928/Paquete_de_2_juguetes_grandes_para_masticar_p%C3%A1jaros_r7rzmb.jpg'
)

Product.create(
  title: 'Correa para perro',
  description: 'Duradera y antideslizante de 4.4 pies, cómoda cuerda fuerte, correa antideslizante para perros grandes, medianos y pequeños, correa de entrenamiento para mascotas sin tirones, color rojo',
  quantity: 20,
  price: 299.99,
  user_id: 3,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701534927/Correa_para_perro_tncuqp.jpg'
)

Product.create(
  title: 'Foam de limpieza en seco Gato Consentido 150ml',
  description: 'El Foam de Limpieza en Seco del Gato Consentido es el producto ideal para la higiene diaria de tu gato. Sin necesidad de mojar a tu gato lograrás mantener su pelaje limpio, brillante y sedoso. Además, previene la aparición de plagas indeseadas como pulgas, garrapatas y piojos. Su fórmula no tóxica, disuelve la mugre del pelo y piel sin afectarles, dejando un suave y agradable aroma.',
  quantity: 12,
  price: 84.69,
  user_id: 1,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701535403/Foam_de_limpieza_en_seco_Gato_Consentido_150ml_po7lmy.jpg'
)

Product.create(
  title: '10 PCS Paquete de Rascadores para Gatos',
  description: 'Nuestro protector de sofá contra arañazos de gatos se puede usar en cualquier lugar donde su gato pueda arañar. Este fuerte protector contra arañazos no solo es adecuado para sofás, sino también para cortinas, puertas, mesas, pisos y más. El protector de sofá para arañazos de gatos le sirve no solo para gatos, sino también a otras mascotas como los perros.',
  quantity: 4,
  price: 219.99,
  user_id: 3,
  photo: 'https://res.cloudinary.com/dyx9c9mym/image/upload/v1701535436/10_PCS_Paquete_de_Rascadores_para_Gatos_jumh9l.jpg'
)

# Orders

Order.create(status: 1, date: Date.new(2023, 11, 25), user_id: 3)
Order.create(status: 2, date: Date.new(2023, 8, 13), user_id: 2)
Order.create(status: 3, date: Date.new(2023, 11, 15), user_id: 3)
Order.create(status: 1, date: Date.new(2023, 11, 3), user_id: 3)
Order.create(status: 2, date: Date.new(2023, 10, 28), user_id: 3)
Order.create(status: 3, date: Date.new(2023, 11, 30), user_id: 2)
