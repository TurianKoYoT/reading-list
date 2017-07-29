# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create!(label: "Science fiction")
Category.create!(label: "Drama")
Category.create!(label: "Kid's stories")
Category.create!(label: "Fiction")
Category.create!(label: "Real-life story")
Category.create!(label: "Idiotism")

7.times do |k|
  name = Faker::Name.unique.name
  Author.create!(name: name)
end

book = Book.new(title: Faker::Book.unique.title,
             description: Faker::Lorem.sentence(5),
             image_url: 'https://marketplace.canva.com/MACXC0twKgo/1/0/thumbnail_large/canva-green-and-pink-science-fiction-book-cover-MACXC0twKgo.jpg')
book.authors << Author.find(rand(1..7))
book.authors << Author.find(rand(1..7))
book.categories << Category.find(rand(1..6))
book.save
             
book = Book.new(title: Faker::Book.unique.title,
             description: Faker::Lorem.sentence(5),
             image_url: 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/business_bookcover.png')
book.authors << Author.find(rand(1..7))
book.authors << Author.find(rand(1..7))
book.categories << Category.find(rand(1..6))
book.save
            
book = Book.new(title: Faker::Book.unique.title,
             description: Faker::Lorem.sentence(5),
             image_url: 'https://s-media-cache-ak0.pinimg.com/736x/f5/da/90/f5da901de158988c7825960c669c0078--vintage-book-covers-vintage-books.jpg')
book.authors << Author.find(rand(1..7))
book.authors << Author.find(rand(1..7))
book.categories << Category.find(rand(1..6))
book.save

50.times do |n|
  title = Faker::Book.unique.title
  description = Faker::Lorem.sentence(5)
  image_url = 'http://njnj.ru/pix/voc/book.gif'
  book = Book.new(title: title,
               description: description,
               image_url: image_url)
  book.authors << Author.find(rand(1..7))
  book.authors << Author.find(rand(1..7))
  book.categories << Category.find(rand(1..6))
  book.save
end

