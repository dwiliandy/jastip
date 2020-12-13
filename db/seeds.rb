# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["ACEH",
"SUMATERA UTARA",
"SUMATERA BARAT",
"RIAU",
"JAMBI",
"SUMATERA SELATAN",
"BENGKULU",
"LAMPUNG",
"KEPULAUAN BANGKA BELITUNG",
"KEPULAUAN RIAU",
"DKI JAKARTA",
"JAWA BARAT",
"JAWA TENGAH",
"DI YOGYAKARTA",
"JAWA TIMUR",
"BANTEN",
"BALI",
"NUSA TENGGARA BARAT",
"NUSA TENGGARA TIMUR",
"KALIMANTAN BARAT",
"KALIMANTAN TENGAH",
"KALIMANTAN SELATAN",
"KALIMANTAN TIMUR",
"KALIMANTAN UTARA",
"SULAWESI UTARA",
"SULAWESI TENGAH",
"SULAWESI SELATAN",
"SULAWESI TENGGARA",
"GORONTALO",
"SULAWESI BARAT",
"MALUKU",
"MALUKU UTARA",
"PAPUA BARAT",
"PAPUA"
].each {|provinces| Region.create(name: provinces)}