class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :yes_no

      t.timestamps
    end
  end
end
