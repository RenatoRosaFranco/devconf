class RemoveColumnNameFromSchedules < ActiveRecord::Migration[5.1]
  def change
    remove_column :schedules, :name
  end
end
