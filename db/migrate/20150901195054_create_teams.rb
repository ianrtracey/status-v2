class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.timestamps null: false
      t.string :name, index: true, null: false
    end
  end
end
