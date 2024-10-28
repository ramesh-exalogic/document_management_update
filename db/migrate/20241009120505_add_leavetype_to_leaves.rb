class AddLeavetypeToLeaves < ActiveRecord::Migration[7.0]
  def change
    add_column :leaves, :leave_type_id, :integer
  end
end
