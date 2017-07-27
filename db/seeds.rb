# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.create!(name: Faker::Book.title,
             description: Faker::Lorem.sentence(5),
             image_url: 'https://marketplace.canva.com/MACXC0twKgo/1/0/thumbnail_large/canva-green-and-pink-science-fiction-book-cover-MACXC0twKgo.jpg')
             
Book.create!(name: Faker::Book.title,
             description: Faker::Lorem.sentence(5),
             image_url: 'https://about.canva.com/wp-content/uploads/sites/3/2015/01/business_bookcover.png')
            
Book.create!(name: Faker::Book.title,
             description: Faker::Lorem.sentence(5),
             image_url: 'https://s-media-cache-ak0.pinimg.com/736x/f5/da/90/f5da901de158988c7825960c669c0078--vintage-book-covers-vintage-books.jpg')

50.times do |n|
  name = Faker::Book.title
  description = Faker::Lorem.sentence(5)
  image_url = 'http://njnj.ru/pix/voc/book.gif'
  Book.create!(name: name,
               description: description,
               image_url: image_url)
end