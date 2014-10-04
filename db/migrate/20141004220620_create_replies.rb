class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.references :post, index: true
      t.references :user, index: true
      t.string :guess

      t.timestamps
    end
  end
end
