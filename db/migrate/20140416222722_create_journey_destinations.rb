class CreateJourneyDestinations < ActiveRecord::Migration
  def change
    create_table :journey_destinations do |t|
      t.belongs_to :journey
      t.belongs_to :destination

      t.timestamps
    end
  end
end
