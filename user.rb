require'./connect.rb'

class User < ActiveRecord::Base
	validates :name, :email, presence: true
	validates :email, format: { with: /\A[^@]+@[^@]+\z/ }
end

#SELECT * FROM users;

u = User.find_by(name: 'Dena')
u.email = "dena@gmail.com"
u.save
p u 


