# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Contest.create(
  title: 'My Great CTF', 
  organiser: "Keifer", 
  min_team_size: 2,
  slogan: "We like hacking", 
  id: 222
)
Person.create(
  id:10,
  bio: 'this guy rocks',
  first_name: 'Keifer',
  last_name: 'Faber-Good',
  contest_id: 222
)
Team.create(
  id: 45,
  title: 'FunBoys',
  score: 0,
  contest_id:222
)
Team.create(
  id: 46,
  title: 'SadBoys',
  score: 0,
  contest_id:222
)
Challenge.create(
  id:423,
  title:'test chal',
  description:'this is a challenge answer is asd123',
  point_value: 20,
  hint: 'asd123',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222
)
Challenge.create(
  id:424,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222
)
Flag.create(
  id:7070,
  answer:'asd123',
  challenge_id:423
)
Flag.create(
  id:7171,
  answer:'qwe123',
  challenge_id:424
)
Flag.create(
  id:7272,
  answer:'123qwe',
  challenge_id:424
)
Sponsor.create(
  id:21,
  title:'incelular inc',
  tier: 'Golf',
  slogan: 'we are the best',
  about: 'we make god real',
  contest_id: 222
)
Article.create(
  id: 1001,
  title: "how to SQL",
  text: 'use a union or something'
)


