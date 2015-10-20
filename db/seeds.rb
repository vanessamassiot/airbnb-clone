User.create(name: "Riri", email: "riri@lewagon.org", password: "12345678", password_confirmation: "12345678")
User.create(name: "Fifi", email: "fifi@lewagon.org", password: "12345679", password_confirmation: "12345679")
User.create(name: "Loulou", email: "loulou@lewagon.org", password: "12345671", password_confirmation: "12345671")
User.create(name: "Tom", email: "tom@lewagon.org", password: "12345672", password_confirmation: "12345672")
User.create(name: "Jerry", email: "jerry@lewagon.org", password: "12345673", password_confirmation: "12345673")

User.last.flats.create(title: "Pool House", description: "Maison au bord de la plage avec Piscine", beds: 3, street: "12 rue de la plage", city: "La Baule",
postcode: "44500", price: 89)
User.last.flats.create(title: "Maison de famille", description: "Maison en forêt idéale famille nombreuse", beds: 15, street: "22 allée des Pins", city: "Mayenne",
postcode: "53000", price: 125)
User.first.flats.create(title: "Studio", description: "Idéal pour week end à deux pour profiter de la vie parisienne", beds: 2, street: "48 avenue verdier", city: "Montrouge",
postcode: "92000", price: 69)
User.first.flats.create(title: "Matelas dans le coin du salon", description: "matelas gonflable. pas très confortable mais pratique", beds: 1, street: "2 rue de la Soif", city: "Rennes",
postcode: "35000", price: 14)
User.first.flats.create(title: "Appartement Terrasse", description: "vue sur la rout eiffel, plein centre, idéalement situé", beds: 5, street: "5 avenue Georges V", city: "Paris",
postcode: "75008", price: 276)


User.last.bookings.create(flat: Flat.first, checkin: Date.today, checkout: Date.current + 2.days, status: "envoyée")
