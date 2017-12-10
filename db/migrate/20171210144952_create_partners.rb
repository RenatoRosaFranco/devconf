class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.string :logo
      t.string :name
      t.text :description
      t.string :link
      t.string :slug
      t.string :tags
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
