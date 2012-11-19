# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



user1 = User.create(:email => 'test1@user.be', :password => 'notsecure', :password_confirmation => 'notsecure')
user2 = User.create(:email => 'test2@user.be', :password => 'notsecure', :password_confirmation => 'notsecure')

Task.create(:text => 'Task1 from User1', :user => user1)
Task.create(:text => 'Task2 from User2', :user => user2)
Task.create(:text => 'Task3 from User1', :user => user1)
Task.create(:text => 'Task4 from User2', :user => user2)
