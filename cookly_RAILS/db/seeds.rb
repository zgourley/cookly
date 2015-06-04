Cook.destroy_all
Rating.destroy_all
User.destroy_all

User.create(user_name: "Kevin", email: "kevin@example.com")
User.create(user_name: "Evelyn", email: "evelyn@example.com")
User.create(user_name: "Allie", email: "allie@example.com")
  

Cook.create([
  {cook_name: "Glenn Harris", password_digest: "password", location: "Santa Monica", cuisine: "Vietnamese", specialty: "pho, bahn mi", description: "Let me cook you a kick-ass bowl of pho while we listen to old school jams from the 70's."
    },

  {cook_name: "Shawn Rodriguez", password_digest: "password", location: "Santa Monica", cuisine: "Tex Mex", specialty: "chilaquiles, queso, enchiladas", description: "I love patying on some delicious tex mex, but not as much as I love partying on code."},

  {cook_name: "Jimmy Garzon", password_digest: "password", location: "Santa Monica", cuisine: "Colombian", specialty: "mango salsa, arepas, empanadas", description: "Be sure to try my abuelita's arepa recipe, always paired with my famous mango salsa. If you don't like it it's OK because it's just data...bro."},

  {cook_name: "Blaise Thomas", password_digest: "password", location: "Santa Monica", cuisine: "French", specialty: "chicken cordon bleu, beef borguignon, ratatouille", description: "Authentic French cuisine prepared by a guy with an authentic British accent: what more could you ask for?"},

  {cook_name: "Rushi Sinha", password_digest: "password", location: "Santa Monica", cuisine: "Indian", specialty: "chicken tikka masala, lamb vindaloo, garlic naan, bhang lassi", description: "I'm also a medical doctor, web developer, and entrepreneur...ladies."},

  {cook_name: "Richard Luo", password_digest: "password", location: "Santa Monica", cuisine: "Pizza", specialty: "california chicken pizza, hawaiian pizza, pepperoni pizza", description: "I like two things: pizza and sleep."},

  {cook_name: "Zack Gourley", password_digest: "password", location: "Santa Monica", cuisine: "Mexican", specialty: "quesadillas, burritos, fajitas", description: "It's authentic only in that I'm from Los Angeles."}

])

Meal.create([
  {cook_id: 1, user_id: 1, date: "2/5/1", time: "8 PM", location: "Santa Monica", info: "dinner for two", price: 50}

  ])

# Rating.create([
#   {star: 4, comment: "Glenn is the freaking man!", cook: Cook.first},
#   {star: 5, comment: "Surpsingly good Vietnamese food for a guy from Norcal who isn't Asian.", cook: Cook.first}
#   ])
  
  




  

