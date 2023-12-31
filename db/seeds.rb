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

Icon.create!({
  name: "linkedin",
  bootstrap_class: "bi bi-linkedin",
  page: "socials",
})

Icon.create!({
  name: "github",
  bootstrap_class: "bi bi-github",
  page: "socials",
})

Icon.create!({
  name: "stack_overflow",
  bootstrap_class: "bi bi-stack-overflow",
  page: "socials",
})

Icon.create!({
  name: "instagram",
  bootstrap_class: "bi bi-instagram",
  page: "socials",
})

Icon.create!({
  name: "twitter",
  bootstrap_class: "bi bi-twitter",
  page: "socials",
})

Icon.create!({
  name: "mail",
  bootstrap_class: "bi bi-envelope-fill",
  page: "messages",
})

Icon.create!({
  name: "chat",
  bootstrap_class: "bi bi-chat-dots-fill",
  page: "messages",
})

Icon.create!({
  name: "telephone",
  bootstrap_class: "bi bi-telephone-inbound-fill",
  page: "messages",
})

Icon.create!({
  name: "form",
  bootstrap_class: "bi bi-clipboard2-fill",
  page: "messages",
})

Icon.create!({
  name: "search",
  bootstrap_class: "bi bi-search",
  page: "projects",
})

Icon.create!({
  name: "about",
  bootstrap_class: "bi bi-file-person-fill",
  page: "details",
})

Icon.create!({
  name: "resume",
  bootstrap_class: "bi bi-file-text-fill",
  page: "details",
})

Icon.create!({
  name: "details",
  bootstrap_class: "bi bi-person-circle",
  page: "pages",
})

Icon.create!({
  name: "projects",
  bootstrap_class: "bi bi-puzzle-fill",
  page: "pages",
})

Icon.create!({
  name: "messages",
  bootstrap_class: "bi bi-send-fill",
  page: "pages",
})

Icon.create!({
  name: "socials",
  bootstrap_class: "bi bi-at",
  page: "pages",
})

Social.create!({
  name: "linkedin",
  icon_id: 1,
  link: "https://www.linkedin.com/in/darcylauder",
  content_link: "https://widgets.sociablekit.com/linkedin-profile-posts/iframe/215438"
})

Social.create!({
  name: "github",
  icon_id: 2,
  link: "https://www.github.com/deke76",
  content_link: nil
})

Social.create!({
  name: "stack_overflow",
  icon_id: 3,
  link: "https://www.stackoverflow.com/users/20403091/darcy?tab=profile",
  content_link: nil
})

Social.create!({
  name: "instagram",
  icon_id: 4,
  link: "https://www.instagram.com/dklaudsie",
  content_link: "https://widgets.sociablekit.com/instagram-feed/iframe/215401"
})

Social.create!({
  name: "twitter",
  icon_id: 5,
  link: "https://twitter.com/DKLaudsie",
  content_link: "https://widgets.sociablekit.com/twitter-feed/iframe/215418"
})

