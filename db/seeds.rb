alicia = User.create(name: "alicia", username: "aliciareeves", password: "pw")

staci = User.create(name: "staci", username: "staci", password: "pw")

Book.create(title: "A time to kill, author:"John Grisham, user_id: staci.id)
Book.create(title: "Testimony", author: "Steven Spielberg", user_id: alicia.id)

