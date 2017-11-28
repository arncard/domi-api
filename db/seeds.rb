Commerce.destroy_all
Category.destroy_all

helados       = Category.create!(name: 'helados')
restaurantes  = Category.create!(name: 'Restaurantes')
peluquerias   = Category.create!(name: 'Peluquerias')
comida_rapida = Category.create!(name: 'Comida Rápida')
mascotas      = Category.create!(name: 'Mascotas')
cafeterias    = Category.create!(name: 'Cafeterías')


Commerce.create!([{
  name: "Agrocampo",
  address: "Calle 82 # 15 - 29",
  email: "info@agrocampo.com",
  website: "www.agrocampo.com",
  logo: "https://dl.dropboxusercontent.com/s/mslyw3fxims8kiv/agrocampo.jpg?dl=0",
  categories: [mascotas]
},
{
  name: "Antonio's peluquería",
  address: "Carrera 13 # 35 - 42",
  email: "info@antonios.com",
  website: "www.antonios.com",
  logo: "https://dl.dropboxusercontent.com/s/qd2gwfekmof1db4/antonios.jpeg?dl=0",
  categories: [peluquerias]
},
{
  name: "Buffalo Wings",
  address: "Carrera 9 # 125 -67",
  email: "info@buffalowings.com",
  website: "www.buffalowings.com",
  logo: "https://dl.dropboxusercontent.com/s/yrmcwvp7kv5o3tc/buffalo_wings.jpeg?dl=0",
  categories: [restaurantes, comida_rapida]
},
{
  name: "Ceba",
  address: "Carrera 13 # 35 - 42",
  email: "info@ceba.com",
  website: "www.ceba.com",
  logo: "https://dl.dropboxusercontent.com/s/tb9ap04syrati28/ceba.jpeg?dl=0",
  categories: [mascotas]
},
{
  name: "Frisby",
  address: "Carrera 9 # 125 -67",
  email: "info@frisby.com",
  website: "www.frisby.com",
  logo: "https://dl.dropboxusercontent.com/s/cpx5axz15d9a32n/frisby.jpg?dl=0",
  categories: [restaurantes, comida_rapida]
},
{
  name: "Harry Sasson",
  address: "Carrera 13 # 35 - 42",
  email: "info@harry_sasson.com",
  website: "www.harry_sasson.com",
  logo: "https://dl.dropboxusercontent.com/s/ckgs9oqrvb2v6kt/harry_sasson.jpg?dl=0",
  categories: [restaurantes, comida_rapida]
},
{
  name: "Kokkoriko",
  address: "Carrera 9 # 125 -67",
  email: "info@kokoriko.com",
  website: "www.kokoriko.com",
  logo: "https://dl.dropboxusercontent.com/s/3dj4zk56wlyf3xr/kokoriko.jpg?dl=0",
  categories: [restaurantes, comida_rapida]
},
{
  name: "Marco Antonio",
  address: "Carrera 13 # 35 - 42",
  email: "info@marco_antonio.com",
  website: "www.marco_antonio.com",
  logo: "https://dl.dropboxusercontent.com/s/a618ymk6b19uaiw/marco_antonio.jpeg?dl=0",
  categories: [peluquerias]
},
{
  name: "Mc Donald's",
  address: "Carrera 9 # 125 -67",
  email: "info@mcdonalds.com",
  website: "www.mcdonalds.com",
  logo: "https://dl.dropboxusercontent.com/s/qpk4ec9rjn00b6c/mcdonalds.jpg?dl=0",
  categories: [restaurantes, comida_rapida]
},
{
  name: "Pizza Hut",
  address: "Carrera 13 # 35 - 42",
  email: "info@pizzahut.com",
  website: "www.pizzahut.com",
  logo: "https://dl.dropboxusercontent.com/s/qp9k1ja0i5qknz8/pizzahut.jpg?dl=0",
  categories: [restaurantes, comida_rapida]
},
{
  name: "Tostao",
  address: "Carrera 9 # 125 -67",
  email: "info@tostao.com",
  website: "www.tostao.com",
  logo: "https://dl.dropboxusercontent.com/s/f0q2p802e5d3dm2/tostao.jpeg?dl=0",
  categories: [cafeterias]
},
{
  name: "Wendy's",
  address: "Carrera 13 # 35 - 42",
  email: "info@wendys.com",
  website: "www.wendys.com",
  logo: "https://dl.dropboxusercontent.com/s/blqth610tirz8hx/Wendys.jpg?dl=0",
  categories: [restaurantes, comida_rapida]
}])

p "Se crearon #{Commerce.count} comercios"
