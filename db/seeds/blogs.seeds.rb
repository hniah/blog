puts "==== Blogs User ===="
Blog.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE blogs_id_seq RESTART WITH 1"
)
puts "==== End ===="

puts "==== Create Blogs ===="
Blog.create([
  { title: 'Blog 1 - lorem ipsum dolor sit amet ', category_id: 1, user_id: 1, short_desc: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, tenetur natus doloremque laborum quos iste ipsum rerum obcaecati impedit odit illo dolorum ab tempora nihil dicta earum fugiat.', description: ''},
  { title: 'Blog 2 - lorem ipsum dolor sit amet ', category_id: 1, user_id: 1, short_desc: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, tenetur natus doloremque laborum quos iste ipsum rerum obcaecati impedit odit illo dolorum ab tempora nihil dicta earum fugiat.', description: ''},
])
puts "==== End ===="

