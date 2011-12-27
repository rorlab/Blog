class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :post
      t.string :name

      t.timestamps
    end
    add_index :tags, :post_id
  end
end
