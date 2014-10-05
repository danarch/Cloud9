class AddChoicesToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :choice1, :string
    add_column :posts, :choice2, :string
    add_column :posts, :choice3, :string
  end
end
