class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :step_title
      t.string :status

      t.timestamps
    end
  end
end
