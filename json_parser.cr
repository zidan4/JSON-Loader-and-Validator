require "json"

# Define a data model
struct User
  include JSON::Serializable

  property name : String
  property email : String
  property age : Int32
end

json_data = %({
  "name": "Equarion",
  "email": "eq@solivaut.net",
  "age": 27
})

user = User.from_json(json_data)

puts "👤 Name: #{user.name}"
puts "📧 Email: #{user.email}"
puts "🎂 Age: #{user.age}"
