# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Reply.destroy_all
Subject.destroy_all
User.destroy_all
Topic.destroy_all

PASSWORD = 'pass123'

users = User.create([
  {first_name: 'Jon', last_name: 'Snow', email: 'js@winterfell.gov', password: PASSWORD},
  {first_name: 'Daenerys', last_name: 'Targaryan', email: 'daeny@dragon.io', password: PASSWORD},
  {first_name: 'Cersei', last_name: 'Lannister', email: 'cs@iron.throne', password: PASSWORD}
])

topics = Topic.create([
  {name: 'General Discussion', is_ingredient: false},
  {name: 'Xanthan Gum'},
  {name: 'Thiamine Mononitrate'},
  {name: 'Azodicarbonamide'},
  {name: 'Sodium Nitrate'},
  {name: 'Butylated Hydroxytoluene'},
  {name: 'Glycerin'},
  {name: 'Sorbitol'},
  {name: 'Aspartame'},
  {name: 'Saccharin'},
  {name: 'Sucralose'},
  {name: 'Xylitol'}
])

topics.each do |t|
  rand(5..10).times do
    Subject.create(
      title: Faker::Hipster.sentence,
      body: Faker::Quote.famous_last_words,
      user: users.sample,
      topic: t,
      created_at: rand(1.years).seconds.ago
    )
  end
end

Subject.all.each do |s|
  rand(5..10).times do
    Reply.create(
      body: Faker::Quote.famous_last_words,
      user: users.sample,
      subject: s,
      created_at: rand(1.years).seconds.ago
    )
  end
end
