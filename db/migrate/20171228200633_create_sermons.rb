class CreateSermons < ActiveRecord::Migration
  def change
    create_table :sermons do |t|
      t.string :title
      t.string :passage
      t.belongs_to :sermon_author, index: true

      t.timestamps null: false
    end
  end
end
