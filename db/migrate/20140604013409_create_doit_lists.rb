class CreateDoitLists < ActiveRecord::Migration
  def change
    create_table :doit_lists do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
