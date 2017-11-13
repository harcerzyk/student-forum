class Student < ApplicationRecord
  has_and_belongs_to_many :courses, :join_table => :students_courses
  has_many :topics
  has_many :posts
  validates :name, presence: true, length: { in: 3.. 50 }, uniqueness: true
  validates :index, presence: true, length: { is: 6 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
end
