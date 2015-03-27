class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :orig_url
      t.string :short_url
      t.integer :clicks
      t.string :title

      t.timestamps null: false
    end
  end
end
