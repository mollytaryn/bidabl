Fabricator(:user) do
  username { Faker::Internet.user_name }
  email    { Faker::Internet.email }
  password              "password1"
  password_confirmation "password1"
end