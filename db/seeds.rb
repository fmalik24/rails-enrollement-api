gem 'faker'

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Enrollment.destroy_all
Student.destroy_all
Course.destroy_all


100.times do
  Student.create(
    name: Faker::Name.name,
    age: Faker::Number.between(from: 21, to: 25)
  )
end

puts "Students seeding completed"


100.times do
  Course.create(
    name: Faker::Name.name,
    level: Faker::Number.between(from: 1, to: 5)
  )
end

puts "Course seeding completed"



# Seed some enrollments


    Enrollment.create(student: Student.find_by(id: 1), course: Course.find_by(id: 1))
    Enrollment.create(student: Student.find_by(id: 2), course: Course.find_by(id: 2))
    Enrollment.create(student: Student.find_by(id: 3), course: Course.find_by(id: 1))
    Enrollment.create(student: Student.find_by(id: 4), course: Course.find_by(id: 2))
    Enrollment.create(student: Student.find_by(id: 1), course: Course.find_by(id: 3))
    Enrollment.create(student: Student.find_by(id: 1), course: Course.find_by(id: 5))
    Enrollment.create(student: Student.find_by(id: 1), course: Course.find_by(id: 6))
    Enrollment.create(student: Student.find_by(id: 1), course: Course.find_by(id: 9))



puts 'Enrollments seeded successfully!'
