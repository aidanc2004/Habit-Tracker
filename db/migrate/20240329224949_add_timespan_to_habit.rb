class AddTimespanToHabit < ActiveRecord::Migration[7.0]
  def change
    add_column :habits, :timespan, :string
  end
end
