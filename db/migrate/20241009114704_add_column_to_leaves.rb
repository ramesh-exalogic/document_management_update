class AddColumnToLeaves < ActiveRecord::Migration[7.0]
  def change
    add_column :leaves, :firstname, :string
    add_column :leaves, :start_date, :string
    add_column :leaves, :end_date, :string
    add_column :leaves, :image, :string
  end
end
