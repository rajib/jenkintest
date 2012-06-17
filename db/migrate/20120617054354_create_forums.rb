class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.text :title

      t.timestamps
    end
  end
end
