# Clear existing data
Parent.destroy_all
Student.destroy_all
School.destroy_all
Sibling.destroy_all
Constraint.destroy_all

# Define seed data for parents table
parents = [
    {father_name: "John Doe", mother_name: "Jane Doe", is_father_alive: "Yes", is_mother_alive: "Yes", guardian_name: nil, contact: 123456789, disability: "No", if_yes_disability_nature: nil, is_from_poor_household: "Yes", who_has_been_paying_your_fee: "NG-CDF", created_at: Time.now, updated_at: Time.now},
    {father_name: "Bob Smith", mother_name: "Alice Smith", is_father_alive: "No", is_mother_alive: "Yes", guardian_name: nil, contact: 234567890, disability: "Yes", if_yes_disability_nature: "Hearing Impairment", is_from_poor_household: "No", who_has_been_paying_your_fee: "Parent", created_at: Time.now, updated_at: Time.now},
    {father_name: "Charlie Williams", mother_name: "Emma Williams", is_father_alive: "Yes", is_mother_alive: "Yes", guardian_name: "Grandparent", contact: nil, disability: "No", if_yes_disability_nature: nil, is_from_poor_household: "Yes", who_has_been_paying_your_fee: "Donor", created_at: Time.now, updated_at: Time.now}
]

# Define seed data for students table
# 
students = [
    {adm: 1234, fname: "Alice", mname: "M", lname: "Smith", dob: Date.new(2005, 7, 15), district: "Sample District", division: "Sample Division", location: "Sample Location", sublocation: "Sample Sublocation", village: "Sample Village", ward: "Sample Ward", ever_received_NGCDF: "Yes", how_much: 5000, year_: Date.new(2021, 1, 1), any_other_bursary: "No", year_received: Date.new(2020, 1, 1), amount: 2000, parents_id: 1, school_id: 1},
    {adm: 5678, fname: "Bob", mname: "J", lname: "Johnson", dob: Date.new(2006, 3, 22), district: "Sample District", division: "Sample Division", location: "Sample Location", sublocation: "Sample Sublocation", village: "Sample Village", ward: "Sample Ward", ever_received_NGCDF: "No", how_much: nil, year_: nil, any_other_bursary: "Yes", year_received: Date.new(2020, 1, 1), amount: 1500, parents_id: 1, school_id: 2},
    {adm: 9012, fname: "Charlie", mname: "K", lname: "Williams", dob: Date.new(2007, 11, 8), district: "Sample District", division: "Sample Division", location: "Sample Location", sublocation: "Sample Sublocation", village: "Sample Village", ward: "Sample Ward", ever_received_NGCDF: "Yes", how_much: 3000, year_: Date.new(2021, 1, 1), any_other_bursary: "No", year_received: Date.new(2020, 1, 1), amount: 1000, parents_id: 2, school_id: 2},
    {adm: 9045, fname: "Charlie", mname: "B", lname: "Wilsons", dob: Date.new(2007, 11, 8), district: "Sample District", division: "Sample Division", location: "Sample Location", sublocation: "Sample Sublocation", village: "Sample Village", ward: "Sample Ward", ever_received_NGCDF: "Yes", how_much: 3000, year_: Date.new(2021, 1, 1), any_other_bursary: "No", year_received: Date.new(2020, 1, 1), amount: 1000, parents_id: 2, school_id: 1}
]

# Define seed data for schools table
schools = [
    {form: "1", stream: "A", term: "1", last_term_position: "5", principal: "Mr. Smith", contact: "123456789", students_id: 1, created_at: Time.now, updated_at: Time.now},
    {form: "2", stream: "B", term: "1", last_term_position: "3", principal: "Mrs. Johnson", contact: "234567890", students_id: 2, created_at: Time.now, updated_at: Time.now},
    {form: "3", stream: "C", term: "1", last_term_position: "2", principal: "Ms. Davis", contact: "345678901", students_id: 3, created_at: Time.now, updated_at: Time.now}
]

# Define seed data for constraints table
constraints = [
  { how_many_children_do_you_have: '4', how_many_in_secondary: '0', how_many_in_post_secondary: '1', parents_id: 1 },
  { how_many_children_do_you_have: '2', how_many_in_secondary: '1', how_many_in_post_secondary: '0', parents_id: 1 },
  { how_many_children_do_you_have: '7', how_many_in_secondary: '4', how_many_in_post_secondary: '1', parents_id: 2 },
  { how_many_children_do_you_have: '7', how_many_in_secondary: '4', how_many_in_post_secondary: '1', parents_id: 2 }
]

# Define seed data for siblings table
siblings = [
    {name: "Jane Doe", relationship: "Sister", school: "ABC Primary School", form_class: "Class 5", total_fee: 2000, outstanding_balance: 500, students_id: 1, created_at: Time.now, updated_at: Time.now},
    {name: "John Doe", relationship: "Brother", school: "XYZ High School", form_class: "Form 2", total_fee: 5000, outstanding_balance: 0, students_id: 1, created_at: Time.now, updated_at: Time.now},
    {name: "Sara Smith", relationship: "Sister", school: "DEF Academy", form_class: "Form 4", total_fee: 8000, outstanding_balance: 1000, students_id: 2, created_at: Time.now, updated_at: Time.now}
]
# Seed the database
parents.each { |p| Parent.create!(p) }
students.each { |s| Student.create!(s) }
schools.each { |s| School.create!(s) }
siblings.each { |s| Sibling.create!(s) }
constraints.each { |c| Constraint.create!(c) }


puts "🌱 Seeding spices..."

# Seed your database here

puts "✅ Done seeding!"
