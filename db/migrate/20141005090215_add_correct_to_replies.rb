class AddCorrectToReplies < ActiveRecord::Migration
  def change
    add_column :replies, :correct, :boolean, default: false
  end
end
