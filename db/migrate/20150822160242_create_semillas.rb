class CreateSemillas < ActiveRecord::Migration
  def change
    create_table :semillas do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
