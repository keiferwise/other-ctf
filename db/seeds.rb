# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(
  id:4,
  title:"CRYPTOGRAPHY",
  description:"math and stuff"
)
Category.create(
  id:2,
  title:"WEB APPLICATION",
  description:""
)
Category.create(
  id:3,
  title:"CLOUD",
  description:""
)
Category.create(
  id:1,
  title:"TRIVIA",
  description:""
)
Category.create(
  id:5,
  title:"REVERSE ENGENEERING",
  description:""
)
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
  contest_id:222,
  category_id:1
)
Challenge.create(
  id:424,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:2
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
Solve.create(
  id: 6969,
  team_id: 45,
  challenge_id: 424 
)


User.create!(
  id:1,
  email:"keiferdwiseman@gmail.com",
  login:"wisemake",
  password:"password123",
  password_confirmation:"password123",
  first_name:"kif",
  last_name:"wis",
  team_id:46,
  contest_id:222,
  active:1,
  approved:1,
  confirmed:1,
  admin:1,
  staff:1,
  participant:1
)

User.create(
  id:2,
  email:"participant@mail.com",
  login:"participant",
  password:"password123",
  password_confirmation:"password123",
  first_name:"kif",
  last_name:"wis",
  team_id:46,
  contest_id:222,
  active:1,
  approved:1,
  confirmed:1,
  admin:0,
  staff:0,
  participant:1
)
User.create(
  id:3,
  email:"staff@mail.com",
  login:"staff",
  password:"password123",
  password_confirmation:"password123",
  first_name:"kif",
  last_name:"wis",
  team_id:45,
  contest_id:222,
  active:1,
  approved:1,
  confirmed:1,
  admin:0,
  staff:1,
  participant:1
)
User.create(
  id:4,
  email:"participant2@mail.com",
  login:"participant2",
  password:"password123",
  password_confirmation:"password123",
  first_name:"kif",
  last_name:"wis",
  team_id:45,
  contest_id:222,
  active:1,
  approved:1,
  confirmed:1,
  admin:0,
  staff:0,
  participant:1
)


Challenge.create(
  id:1,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:2
)
Challenge.create(
  id:2,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:2
)
Challenge.create(
  id:3,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:2
)
Challenge.create(
  id:4,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:2
)
Challenge.create(
  id:10,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:1
)
Challenge.create(
  id:11,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:1
)
Challenge.create(
  id:12,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:3
)
Challenge.create(
  id:13,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:3
)
Challenge.create(
  id:14,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:3
)
Challenge.create(
  id:15,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:5
)
Challenge.create(
  id:16,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:5
)
Challenge.create(
  id:17,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:5
)
Challenge.create(
  id:20,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:21,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:22,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:23,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:24,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:25,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:26,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:27,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)





Challenge.create(
  id:31,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:2
)
Challenge.create(
  id:32,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:2
)
Challenge.create(
  id:33,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:2
)
Challenge.create(
  id:34,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:2
)
Challenge.create(
  id:40,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:1
)
Challenge.create(
  id:41,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:1
)
Challenge.create(
  id:42,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:3
)
Challenge.create(
  id:43,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:5
)
Challenge.create(
  id:44,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:5
)
Challenge.create(
  id:45,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:5
)
Challenge.create(
  id:46,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:5
)
Challenge.create(
  id:47,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:5
)
Challenge.create(
  id:50,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:51,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:52,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:53,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:54,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:55,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:56,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)
Challenge.create(
  id:57,
  title:'test chal 2',
  description:'this is a challenge answer is qwe123',
  point_value: 30,
  hint: 'qwer1234',
  link: 'google.com',
  connection_string: 'keiferwiseman@localhost:2023',
  contest_id:222,
  category_id:4
)