class AddColorToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :color_id, :integer
  end
end
