class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/students" do
    # get all the students from the db
    students = Student.all
    students.to_json
  end

   # Creating (POSTING) a new student
   post '/students' do
    student =Student.create(
      adm: params[:adm],
      fname: params[:fname],
      lname: params[:lname],
      dob: params[:dob],
      district: params[:district],
      division: params[:division],
      location: params[:location],
      sublocation: params[:sublocation],
      village: params[:village],
      ward: params[:ward],
      ever_received_NGCDF: params[:ever_received_NGCDF],
      how_much: params[:how_much],
      year_: params[:year_],
      any_other_bursary: params[:any_other_bursary],
      year_received: params[:year_received],
      amount: params[:amount],
      parents_id: params[:parents_id],
      school_id: params[:school_id]
    )
    student.to_json
  end

  # Updating an individual student details
  patch '/students/:id' do
  student = Student.find(params[:id])
  student.update(
  adm: params[:adm],
  fname: params[:fname],
  lname: params[:lname],
  dob: params[:dob],
  district: params[:district],
  division: params[:division],
  location: params[:location],
  sublocation: params[:sublocation],
  village: params[:village],
  ward: params[:ward],
  ever_received_NGCDF: params[:ever_received_NGCDF],
  how_much: params[:how_much],
  year_: params[:year_],
  any_other_bursary: params[:any_other_bursary],
  year_received: params[:year_received],
  amount: params[:amount],
  parents_id: params[:parents_id],
  school_id: params[:school_id]
)
student.to_json
end

  # Deleting a student
  delete '/students/:id' do
    student=Student.find(params[:id])
    student.destroy
    student.to_json
  end

  get "/parents" do
    # get all the parentsts from the db
    parents = Parent.all
    parents.to_json
  end

  # Creating a new parent
   post '/parents' do
    parent =Parent.create(
      father_name: params[:father_name],
      mother_name: params[:mother_name],
      is_father_alive: params[:is_father_alive],
      is_mother_alive: params[:is_mother_alive],
      guardian_name: params[:guardian_name],
      contact: params[:contact],
      disability: params[:disability],
      if_yes_disability_nature: params[:if_yes_disability_nature],
      is_from_poor_household: params[:is_from_poor_household],
      who_has_been_paying_your_fee: params[:who_has_been_paying_your_fee]
    )
    parent.to_json
  end

#  Updating a parents record
    patch '/parents/:id' do
    parent = Parent.find(params[:id])
    parent.update(
    father_name: params[:father_name],
    mother_name: params[:mother_name],
    is_father_alive: params[:is_father_alive],
    is_mother_alive: params[:is_mother_alive],
    guardian_name: params[:guardian_name],
    contact: params[:contact],
    disability: params[:disability],
    if_yes_disability_nature: params[:if_yes_disability_nature],
    is_from_poor_household: params[:is_from_poor_household],
    who_has_been_paying_your_fee: params[:who_has_been_paying_your_fee]
  )
  parent.to_json
  end

  # Deleting a parent
  delete '/parents/:id' do
    parent=Parent.find(params[:id])
    parent.destroy
    parent.to_json
  end

  get "/schools" do
    # get all the parentsts from the db
    schools = School.all
    schools.to_json
  end

  # Creating a new school
  post '/schools' do
    school =School.create(
      form: params[:form],
      stream: params[:stream],
      term: params[:term],
      last_term_position: params[:last_term_position],
      principal: params[:principal],
      contact: params[:contact],
      students_id: params[:students_id]
    )
    school.to_json
  end

  # Updating a school record
    patch '/schools/:id' do
    school = School.find(params[:id])
    school.update(
      form: params[:form],
      stream: params[:stream],
      term: params[:term],
      last_term_position: params[:last_term_position],
      principal: params[:principal],
      contact: params[:contact],
      students_id: params[:students_id]
  )
  school.to_json
  end

  # Deleting a school
  delete '/schools/:id' do
    school=School.find(params[:id])
    school.destroy
    school.to_json
  end


  get "/siblings" do
    # get all the parentsts from the db
    siblings = Sibling.all
    siblings.to_json
  end
  # Creating a new sibling
    post '/siblings' do
      sibling =Sibling.create(
        name: params[:name],
        relationship: params[:relationship],
        school: params[:school],
        form_class: params[:form_class],
        total_fee: params[:total_fee],
        outstanding_balance: params[:outstanding_balance],
        students_id: params[:students_id]
      )
      sibling.to_json
    end
    # Updating a sibling record
     patch '/siblings/:id' do
      sibling = Sibling.find(params[:id])
      sibling.update(
        name: params[:name],
        relationship: params[:relationship],
        school: params[:school],
        form_class: params[:form_class],
        total_fee: params[:total_fee],
        outstanding_balance: params[:outstanding_balance],
        students_id: params[:students_id]
    )
    sibling.to_json
    end

  # Deleting sibling
  delete '/siblings/:id' do
    sibling=Sibling.find(params[:id])
    sibling.destroy
    sibling.to_json
  end

  get "/constraints" do
    # get all the constraints from the db
    constraints = Constraint.all
    constraints.to_json
  end

  # Creating a new constarint entry
  post '/constraints' do
    constraint =Constraint.create(
      how_many_children_do_you_have: params[:how_many_children_do_you_have],
      how_many_in_secondary: params[:how_many_in_secondary],
      how_many_in_post_secondary: params[:how_many_in_post_secondary],
      parents_id: params[:parents_id]
    )
    constraint.to_json
  end

  # Updating a constraint record
   patch '/constraints/:id' do
    constraint = Constraint.find(params[:id])
    constraint.update(
      how_many_children_do_you_have: params[:how_many_children_do_you_have],
      how_many_in_secondary: params[:how_many_in_secondary],
      how_many_in_post_secondary: params[:how_many_in_post_secondary],
      parents_id: params[:parents_id]
  )
  constraint.to_json
  end

  # Deleting a constarint
  delete '/constraints/:id' do
    constraint=Constraint.find(params[:id])
    constraint.destroy
    constraint.to_json
  end
  
  # Get data associated with the parents table and students
  get '/parents/:id' do
    parent = Parent.find(params[:id])
    parent.to_json(include: :students)
  end

# new forms
get "/students/new" do
  # get all the students from the db
  students = Student.all
  students.to_json
end

get('/students/:id/edit') do
  # "This will take us to a page with a form for updating an album with an ID of #{params[:id]}."
end

end


