# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(:name => 'admin')
Role.create(:name => 'user')

unless User.find(:email => 'admin@localhost.localdomain') do 
  user1 = User.create(:email => 'admin@localhost.localdomain', :password => 'notsecure', 
                      :password_confirmation => 'notsecure')
  # user2 = User.create(:email => 'test2@user.be', :password => 'notsecure', 
  #                     :password_confirmation => 'notsecure')

  user1.add_role :admin
  # user2.add_role :user

  Task.create(:text => 'First task', :user => user1)
end
# Task.create(:text => 'Task2 from User2', :user => user2)
# Task.create(:text => 'Task3 from User1', :user => user1)
# Task.create(:text => 'Task4 from User2', :user => user2)
