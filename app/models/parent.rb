class Parent < ActiveRecord::Base
    has_many  :students
    has_many :constraints
    has_many :schools, through: :students
end
