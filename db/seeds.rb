User.create(name: "Riri", email: "riri@lewagon.org", password: "12345678", password_confirmation: "12345678")
User.create(name: "Fifi", email: "fifi@lewagon.org", password: "12345679", password_confirmation: "12345679")
User.create(name: "Loulou", email: "loulou@lewagon.org", password: "12345671", password_confirmation: "12345671")
User.create(name: "Tom", email: "tom@lewagon.org", password: "12345672", password_confirmation: "12345672")
User.create(name: "Jerry", email: "jerry@lewagon.org", password: "12345673", password_confirmation: "12345673")

User.last.flats.create(title: "Wéreseo", description: "Espace de coworking", beds: 3, street: "104 rue nationale", city: "Lille",
postcode: "59000", price: 89)
User.last.flats.create(title: "Wéreseo", description: "Maison en forêt idéale famille nombreuse", beds: 15, street: "104 avenue du peuple belge", city: "Lille",
postcode: "59000", price: 125)
User.first.flats.create(title: "Chez Wam", description: "Idéal pour week end à deux pour profiter de la vie parisienne", beds: 2, street: "12 rue henri Bouchery", city: "Perenchies",
postcode: "59840", price: 69)
User.first.flats.create(title: "Chez oit", description: "matelas gonflable. pas très confortable mais pratique", beds: 1, street: "12 rue nationale", city: "Lille",
postcode: "59000", price: 14)
User.first.flats.create(title: "Chez lui", description: "vue sur la rout eiffel, plein centre, idéalement situé", beds: 5, street: "12 rue colbert", city: "Lille",
postcode: "59000", price: 276)


User.last.bookings.create(flat: Flat.first, checkin: Date.today, checkout: Date.current + 2.days, status: "envoyée")
