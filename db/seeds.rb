# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ramon = Coach.create(full_name: "Ramon Berrios", email: "ramon@dbc.com", password: "password", company_name: "Dev Bootcamp")

Client.create(full_name: "Billy Fowler", email: "billy@gmail.com", password: "password", coach_id: 1)
  Goal.create(statement: "Send out resume to Google", notes: "This job is for a engineering position so make sure your cover letter reflects that", client_id: 1)
  Goal.create(statement: "Add latest app to portfolio", client_id: 1)
  Goal.create(statement: "Update LinkedIn", notes: "Add profile picture from DBC", client_id: 1)
  Goal.create(statement: "Change Twitter Name", client_id: 1)

Client.create(full_name: "Nichole Clemmer", email: "nichole@gmail.com", password: "password", coach_id: 1)
Goal.create(statement: "Send follow up email to latest interviewer", notes: "Interviewer's name was John Doe", client_id: 2)
