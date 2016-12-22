class UpdateUserTable < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.string :full_name
      	t.boolean :is_admin, null: false, default: false
    end
  end
end
