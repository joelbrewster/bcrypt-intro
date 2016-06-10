# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.all.each(&:destroy)
# Comment.delete_all

users = User.create([
  { username: "Bazza", email:"bazz@gmail.com", password:"123456"},
  { username: "Shazza", email:"shaz@gmail.com", password:"123456"},
  { username: "Gazza", email:"freakincage@hotmail.com", password:"hunter2"}
])


posts = Post.create([
  { user_id: users[0].id, title: 'Welcome', content: 'This is my first post!',
    image: '', category: 'General'},
    { user_id: users[1].id, title: 'Hello Again', content: 'This is my second post!',
      image: '', category: 'Coding'}])

Comment.create([
  {user_id: users[0].id, post_id: posts[0].id, content: 'Boots in cats!',
   like: true},
   {user_id: users[1].id, post_id: posts[1].id, content: 'Cats in boots!',
    like: false}])

