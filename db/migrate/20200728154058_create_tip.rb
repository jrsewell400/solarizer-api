class CreateTip < ActiveRecord::Migration[5.1]
  def change
    create_table :tips do |t|
      t.string :description
    end
  end
end
