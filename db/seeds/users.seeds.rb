puts "==== Destroy User ===="
User.destroy_all
ActiveRecord::Base.connection.execute(
  "ALTER SEQUENCE users_id_seq RESTART WITH 1"
)
puts "==== End ===="

puts "==== Create Admin ===="
User.create([
  { full_name: 'Admin', email: 'admin@example.com', password: '123123123', confirmed_at: Date.today, is_admin: true },
  { full_name: 'Nicholas', email: 'nicholas@foodxervices.com', password: '123123123', confirmed_at: Date.today, is_admin: true }
])
puts "==== End ===="

puts "==== Create User ===="
User.create([
  { full_name: 'Windsor Owner',   email: 'test@example.com',   password: '123123123', confirmed_at: Date.today },
  { full_name: 'Windsor Manager', email: 'windsor_manager@example.com', password: '123123123', confirmed_at: Date.today },
  { full_name: 'Saveur Owner',    email: 'saveur_owner@example.com',    password: '123123123', confirmed_at: Date.today },
  { full_name: 'Saveur Manager',  email: 'saveur_manager@example.com',  password: '123123123', confirmed_at: Date.today },
])
puts "==== End ===="