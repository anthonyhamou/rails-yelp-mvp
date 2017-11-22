puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0618493012',
    category:  'japanese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '0612895623',
    category:  'italian'
  },
  {
    name:         'Epicure',
    address:      'rue Oberkampf',
    phone_number: '0670389609',
    category:  'french'
  },
  {
    name:         'Burger Fries',
    address:      'choux de bruxelles',
    phone_number: '0645656637',
    category:  'belgian'
  },
  {
    name:         'Au temple maudit',
    address:      'bakeer street',
    phone_number: '0619305821',
    category:  'chinese'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
