class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
        t.string :name
        t.belongs_to :city, index: true
        t.timestamps
    end

    create_table :dogsitters do |t|
        t.string :first_name
        t.string :last_name
        t.belongs_to :city, index: true
        t.timestamps
    end

    create_table :cities do |t|
    	t.string :city_name
    	t.timestamps
    end

    create_table :strolls do |t|
    	t.belongs_to :dog, index: true
    	t.belongs_to :dogsitter, index: true
    	t.timestamps
    end
  end
end
