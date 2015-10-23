User.create(name: "Riri", email: "riri@lewagon.org", password: "12345678", password_confirmation: "12345678")
User.create(name: "Fifi", email: "fifi@lewagon.org", password: "12345679", password_confirmation: "12345679")
User.create(name: "Loulou", email: "loulou@lewagon.org", password: "12345671", password_confirmation: "12345671")
User.create(name: "Tom", email: "tom@lewagon.org", password: "12345672", password_confirmation: "12345672")
User.create(name: "Jerry", email: "jerry@lewagon.org", password: "12345673", password_confirmation: "12345673")


User.last.bookings.create(flat: Flat.first, checkin: Date.today, checkout: Date.current + 2.days, status: "envoyée")
