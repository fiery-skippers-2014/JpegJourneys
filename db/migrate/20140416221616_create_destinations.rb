class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.belongs_to :journey
      t.string :place

      t.timestamps
    end
  end
end
