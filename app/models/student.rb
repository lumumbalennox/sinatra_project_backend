class Student < ActiveRecord::Base
    belongs_to :schools
    belongs_to :parents
    has_many :siblings
end
