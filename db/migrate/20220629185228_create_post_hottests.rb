class CreatePostHottests < ActiveRecord::Migration[7.0]
  def change
    create_table :post_hottests do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
