puts 'cleaning db'
Topic.destroy_all

puts 'Loading Data'
topic_attributes = [
  {
    title: 'Programación'
  },
  {
    title: 'Desarrollo web'
  },
  {
    title: 'Bases de Datos'
  },
  {
    title: 'Aplicaciones móviles'
  },
]

Topic.create!(topic_attributes)
