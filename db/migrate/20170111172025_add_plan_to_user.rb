class AddPlanToUser < ActiveRecord::Migration
  def change
    #Table Name, Column Name, Column Type
    add_column :users, :plan_id, :integer
  end
end
