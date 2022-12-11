# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "🌱 Seeding data..."
Movie.create([
  {
    title: "Paralell Mothers",
    category: "Drama",
    poster_url: "https://m.media-amazon.com/images/M/MV5BM2Y2MWIzY2YtZDJiYi00ODM3LWE5NGYtNjlkYWE5ZmMxNTdmXkEyXkFqcGdeQXVyOTgxNDIzMTY@._V1_.jpg",
    description: "The story of two mothers who bond in unexpected way after giving birth the same day.",
    year: 2021,
    length: 120

  },
  {
    title: "Cast Away",
    category: "Drama",
    poster_url: "https://upload.wikimedia.org/wikipedia/en/a/a7/Cast_away_film_poster.jpg",
    description: "Chuck Nolan, a top international manager for FedEx, and Kelly, a Ph.D. student, are in love and heading towards marriage. Then Chuck's plane to Malaysia crashes at sea during a terrible storm. He's the only survivor, and finds himself marooned on a desolate island. With no way to escape, Chuck must find ways to survive in his new home.",
    year: 2000,
    length: 143
  },
  {
    title: "Click",
    category: "Comedy",
    poster_url: "https://upload.wikimedia.org/wikipedia/en/thumb/b/bd/Click_film.jpg/220px-Click_film.jpg",
    description: "A married workaholic, Michael Newman doesn't have time for his wife and children, not if he's to impress his ungrateful boss and earn a well-deserved promotion. So when he meets Morty, a loopy sales clerk, he gets the answer to his prayers: a magical remote that allows him to bypass life's little distractions with increasingly hysterical results.",
    year: 2006,
    length: 107

  },
  {
    title: "Top Gun: Maverick",
    category: "Action",
    poster_url: "https://m.media-amazon.com/images/M/MV5BZWYzOGEwNTgtNWU3NS00ZTQ0LWJkODUtMmVhMjIwMjA1ZmQwXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg",
    description: "After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN's elite graduates on a mission that demands the ultimate sacrifice from those chosen to fly it.",
    year: 2022,
    length: 131

  },
  {
    title: "The Notebook",
    category: "Romance",
    poster_url: "https://m.media-amazon.com/images/M/MV5BMTk3OTM5Njg5M15BMl5BanBnXkFtZTYwMzA0ODI3._V1_.jpg",
    description: "The Notebook is a contemporary love story set in the pre- and post-World War II era. Noah and Allie spend a wonderful summer together, but her family and the socio-economic realities of the time prevent them from being together.",
    year: 2004,
    length: 124

  },
  {
    title: "WALL-E",
    category: "Family",
    poster_url: "https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_.jpg",
    description: "WALL•E (Waste Allocation Load Lifter Earth-Class) is the last robot left on Earth, programmed to clean up the planet, one trash cube at a time. However, after 700 years, he's developed one little glitch—a personality. He's extremely curious, highly inquisitive, and a little lonely.",
    year: 2008,
    length: 97

  },
  {
    title: "Office Space",
    category: "Comedy",
    poster_url: "https://m.media-amazon.com/images/M/MV5BOTA5MzQ3MzI1NV5BMl5BanBnXkFtZTgwNTcxNTYxMTE@._V1_FMjpg_UX1000_.jpg",
    description: " Three company workers who hate their jobs decide to rebel against their greedy boss. In the Initech office, the insecure Peter Gibbons hates his job and the obnoxious Division VP Bill Lumbergh who has just hired two efficiency consultants to downsize the company.",
    year: 1999,
    length: 89

  },
  {
    title: "The Mask",
    category: "Comedy",
    poster_url: "https://m.media-amazon.com/images/M/MV5BOWExYjI5MzktNTRhNi00Nzg2LThkZmQtYWVkYjRlYWI2MDQ4XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg",
    description: "Bank clerk Stanley Ipkiss is transformed into a manic superhero when he wears a mysterious mask. Timid bank clerk, Stanley Ipkiss (Jim Carrey). Unfortunately, he's too gentle, and is unable to handle confrontations. After one of the worst days, he finds a mask which depicts Loki, the Norse god of mischief.",
    year: 1994,
    length: 101

  },
  {
    title: "500 Days of Summer",
    category: "Romance",
    poster_url: "https://m.media-amazon.com/images/M/MV5BMTk5MjM4OTU1OV5BMl5BanBnXkFtZTcwODkzNDIzMw@@._V1_.jpg",
    description: "After being dumped by the girl he believes to be his soulmate, hopeless romantic Tom Hansen reflects on their relationship to try and figure out where things went wrong and how he can win her back.",
    year: 2009,
    length: 95

  },
  {
    title: "Ferris Bueller's Day Off",
    category: "Comedy",
    poster_url: "https://m.media-amazon.com/images/M/MV5BMDA0NjZhZWUtNmI2NC00MmFjLTgwZDYtYzVjZmNhMDVmOTBkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_FMjpg_UX1000_.jpg",
    description: "A high school slacker pretends to be sick to skip school and have an exciting day off alongside his girlfriend and his best buddy through Chicago, while trying to outwit his obsessive school principal and his unconformited sister along the way.",
    year: 1986,
    length: 98

  },
  {
    title: "Harry Potter and the Sorcerer's Stone",
    category: "Adventure",
    poster_url: "https://m.media-amazon.com/images/M/MV5BNmQ0ODBhMjUtNDRhOC00MGQzLTk5MTAtZDliODg5NmU5MjZhXkEyXkFqcGdeQXVyNDUyOTg3Njg@._V1_.jpg",
    description: "It is a story about Harry Potter, an orphan brought up by his aunt and uncle because his parents were killed when he was a baby. Harry is unloved by his uncle and aunt but everything changes when he is invited to join Hogwarts School of Witchcraft and Wizardry and he finds out he's a wizard.",
    year: 2001,
    length: 152

  },
  {
    title: "The Lost City",
    category: "Romance",
    poster_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2JMLFkh93i-HVyMvA7HBKCs_uaf10HUEDL9UhhOOBLJ-vZj7z",
    description: "A reclusive romance novelist on a book tour with her cover model gets swept up in a kidnapping attempt that lands them both in a cutthroat jungle adventure. A reclusive romance novelist on a book tour with her cover model gets swept up in a kidnapping attempt that lands them both in a cutthroat jungle adventure.",
    year: 2022,
    length: 112

  },
  {
    title: "Mad Max: Fury Road",
    category: "Action",
    poster_url: "https://m.media-amazon.com/images/M/MV5BN2EwM2I5OWMtMGQyMi00Zjg1LWJkNTctZTdjYTA4OGUwZjMyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg",
    description: "An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and almost everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order.",
    year: 2015,
    length: 120

  },
  {
    title: "John Wick",
    category: "Action",
    poster_url: "https://m.media-amazon.com/images/M/MV5BMTU2NjA1ODgzMF5BMl5BanBnXkFtZTgwMTM2MTI4MjE@._V1_.jpg",
    description: 'John eventually became the top enforcer for the New York Russian crime syndicate, becoming a feared and ruthless hitman that people describe as "a man of focus, commitment, and sheer will". He was later nicknamed "Baba Yaga", being further described as the man one would send to "kill the Bogeyman"',
    year: 2014,
    length: 101

  },
  {
    title: "Mr. & Mrs. Smith",
    category: "Action",
    poster_url: "https://m.media-amazon.com/images/M/MV5BMTUxMzcxNzQzOF5BMl5BanBnXkFtZTcwMzQxNjUyMw@@._V1_.jpg",
    description: "The film stars Brad Pitt and Angelina Jolie as a bored upper middle class married couple surprised to learn that they are assassins belonging to competing agencies, and that they have been assigned to kill each other.",
    year: 2005,
    length: 120

  },
])

2.times do |n|
  salt = BCrypt::Engine::generate_salt
  passwordDigest = BCrypt::Engine::hash_secret("123", salt)
  User.create(
    password_digest: passwordDigest,
    username: n + 1
  )
end

6.times do |n|
  Review.create(
    user_id: n % 2 == 0 ? 2 : 1,
    movie_id: Random.rand(1..11),
    title: "#{Faker::Lorem.sentence(word_count: 5)}",
    comment: "#{Faker::Lorem.sentence(word_count: 10)}",
    rating: "#{Random.rand(1..6)}/5"
  )
end

puts "🌱 Done seeding!"