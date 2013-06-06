class AddGoalidToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :goal_id, :integer
  end
end
