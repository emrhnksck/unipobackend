class AddDefaultValueToIsDone < ActiveRecord::Migration[7.0]
  def change
    change_column :todos, :is_done, :boolean, default: false
  end
end
