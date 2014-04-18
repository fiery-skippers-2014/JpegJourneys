class CreateJourneys < ActiveRecord::Migration
  def change
    create_table :journeys do |t|
      t.belongs_to :user
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
