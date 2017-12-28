class CreateSermonSeries < ActiveRecord::Migration
  def change
    create_table :sermon_series do |t|
      t.string :title
      t.string :primary_theme
      t.string :secondary_theme

      t.timestamps null: false
    end
  end
end
