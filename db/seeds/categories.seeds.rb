puts "==== Categories User ===="
Category.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE categories_id_seq RESTART WITH 1"
)
puts "==== End ===="

puts "==== Create Categories ===="
Category.create([
  { title: 'Category 1 - lorem ipsum dolor sit amet ', user_id: 1, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, tenetur natus doloremque laborum quos iste ipsum rerum obcaecati impedit odit illo dolorum ab tempora nihil dicta earum fugiat.'},
  { title: 'Category 2 - lorem ipsum dolor sit amet ', user_id: 1, description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, tenetur natus doloremque laborum quos iste ipsum rerum obcaecati impedit odit illo dolorum ab tempora nihil dicta earum fugiat.'},
])
puts "==== End ===="

