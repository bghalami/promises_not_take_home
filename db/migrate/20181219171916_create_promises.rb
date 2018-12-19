class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.string :person
      t.text :promise
      t.string :status, default: "in progress"
    end
  end
end
