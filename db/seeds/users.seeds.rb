puts "==== Destroy User ===="
User.destroy_all
Admin.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE users_id_seq RESTART WITH 1"
)
puts "==== End ===="

puts "==== Create Admin ===="
Admin.create([
  { email: 'admin@example.com', password: '123123123'},
  { email: 'nicholas@foodxervices.com', password: '123123123' }
])
puts "==== End ===="

puts "==== Create User ===="
User.create([
  { full_name: 'Windsor Owner',   email: 'windsor_owner@example.com',   password: '123123123', confirmed_at: Date.today },
  { full_name: 'Windsor Manager', email: 'windsor_manager@example.com', password: '123123123', confirmed_at: Date.today },
  { full_name: 'Saveur Owner',    email: 'saveur_owner@example.com',    password: '123123123', confirmed_at: Date.today },
  { full_name: 'Saveur Manager',  email: 'saveur_manager@example.com',  password: '123123123', confirmed_at: Date.today },
])
puts "==== End ===="