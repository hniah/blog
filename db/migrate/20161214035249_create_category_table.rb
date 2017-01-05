class CreateCategoryTable < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	t.string :title
    	t.text :description
    	t.references :admin
    	t.timestamps
    end
  end
end
