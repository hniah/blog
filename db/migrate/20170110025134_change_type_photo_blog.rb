class ChangeTypePhotoBlog < ActiveRecord::Migration
  def change
    remove_column :blogs, :photo, :string
    add_attachment :blogs, :photo
  end

end
