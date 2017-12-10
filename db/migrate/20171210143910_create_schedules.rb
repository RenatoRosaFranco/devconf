class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.time :hour
      t.string :title
      t.string :name
      t.text :description
      t.string :slug
      t.string :tags
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
