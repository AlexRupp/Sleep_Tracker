class CreateBedTimes < ActiveRecord::Migration
  def change
    create_table :bed_times do |t|

      t.timestamps
    end
  end
end
