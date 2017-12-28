class CreateSermonAuthorSermonSeries < ActiveRecord::Migration
  def change
    create_table :sermon_author_sermon_series do |t|
      t.integer :sermon_author_id
      t.integer :sermon_series_id

      t.timestamps null: false
    end
  end
end
