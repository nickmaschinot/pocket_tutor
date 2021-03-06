User.create!(name: "Example User",
              email:  "example@pockettutor.com",
              password:              "password", 
              password_confirmation: "password",
              admin: true,
              activated: true,
              activated_at: Time.zone.now)
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@pockettutor.com"
  password = password
  User.create!(name: name,
              email: email,
              password:              "password", 
              password_confirmation: "password",
              activated: true,
              activated_at: Time.zone.now)
end 