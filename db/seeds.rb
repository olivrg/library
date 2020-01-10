# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
homer = User.create!(
    email: "homer.simpson@sfmail.com",
    first_name: "Homer",
    last_name: "Simpson"
)
marge = User.create!(
    email: "marge.simpson@sfmail.com",
    first_name: "Marge",
    last_name: "Simpson"
)
bart = User.create!(
    email: "bart.simpson@sfmail.com",
    first_name: "Bart",
    last_name: "Simpson"
)

lisa = User.create!(
    email: "lisa.simpson@sfmail.com",
    first_name: "Lisa",
    last_name: "Simpson"
)

Item.create!(
    [
        {
            title: "Thinking Fast and Slow",
            description: "A lifetime's worth of wisdom from an International bestseller",
            user: lisa,
            image_url: "https://imgur.com/RDC4N2J"
        },
        {
            title: "The Tipping Point",
            description: "In this brilliant and original book, Malcolm Gladwell explains and analyses the 'tipping point'",
            user: lisa,
            image_url: "https://imgur.com/uzTP4nX"
        },
        {
            title: "Cooking for Friends",
            description: "Gordon Ramsay, bridges the gap between his famous chef’s table and his table at home",
            user: marge,
            image_url: "https://imgur.com/47AiWlh"
        },
        {
            title: "Call of Duty: Modern Warfare",
            description: "Call of Duty: Modern Warfare is a first-person shooter video game developed by Infinity Ward",
            user: bart,
            image_url: "https://imgur.com/CqZPHbb"
        },
        {
            title: "Mars Attack",
            description: "Earth is invaded by Martians with unbeatable weapons and a cruel sense of humour",
            user: homer,
            image_url: "https://imgur.com/GkcsguD"
        }
    ]
)