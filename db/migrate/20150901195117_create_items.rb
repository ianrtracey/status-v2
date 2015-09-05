class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.timestamps null: false
      t.string :content
      t.string :category
    end
  end
end
