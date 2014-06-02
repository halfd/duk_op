class EventsCategories < ActiveRecord::Migration
  def change
    create_table :events_categories, id: false  do |t|
      t.belongs_to :event, index: true
      t.belongs_to :category, index: true
    end
  end
end
