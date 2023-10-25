# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

rand(50).times do |i|
  app_name = Faker::App.name
  Project.create!({
    name: Faker::Commerce.product_name,
    git_url: "http://github.com/#{Faker::Internet::username}/#{app_name}",
    deployed_url: "http://#{app_name}.#{Faker::Internet.domain_suffix}
    ",
    description: Faker::Lorem::paragraph(sentence_count: rand(20)),
  })
end

Social.create!({
  name: "LinkedIn",
  icon: "bi-linkedin",
  link: "linkedin.com/in/darcylauder",
})

Social.create!({
  name: "Github",
  icon: "bi-github",
  link: "github.com/deke76"
})

Social.create!({
  name: "Stack Overflow",
  icon: "bi-stack-overflow",
  link: "stackoverflow.com/users/20403091/darcy?tab=profile"
})

Social.create!({
  name: "Instagram",
  icon: "bi-instagram",
  link: "facebook.com/darcy.lauder.7"
})

Social.create!({
  name: "Twitter",
  icon: "bi-twitter-x",
  link: "twitter.com/DKLaudsie"
})
