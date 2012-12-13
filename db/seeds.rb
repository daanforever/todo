# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.find_or_create_by_name('admin')
Role.find_or_create_by_name('user')

user1 = User.find_or_create_by_email( :email => 'admin@localhost.localdomain', 
                                      :password => 'notsecure', 
                                      :password_confirmation => 'notsecure')
user1.add_role :admin
Task.find_or_create_by_text(:text => 'First task', :user => user1)
