class CreateSpeakers < ActiveRecord::Migration[5.1]
  def change
    create_table :speakers do |t|
      t.string :avatar
      t.string :name
      t.text :description
      t.string :enterprise
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
