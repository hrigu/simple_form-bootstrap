class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.date :date_from
      t.date :date_to
      t.string :title
      t.boolean :published

      t.timestamps
    end
  end
end
