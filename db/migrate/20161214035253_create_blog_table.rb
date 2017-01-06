class CreateBlogTable < ActiveRecord::Migration
  	def change
	    create_table :blogs do |t|
	    	t.string 	:title
	    	t.text		:description
	    	t.string	:photo
	    	t.references :category
	    	t.references :user
	    	t.timestamps
	    end
  	end
end
