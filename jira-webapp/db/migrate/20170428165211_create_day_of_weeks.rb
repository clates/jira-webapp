class CreateDayOfWeeks < ActiveRecord::Migration[5.1]
  def change
    create_table :day_of_weeks do |t|
      t.string :day

      t.timestamps
    end
  end
end
