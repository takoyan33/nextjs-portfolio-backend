class CreateHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :histories do |t|
      t.string :title
      t.string :date
      t.string :body

      t.timestamps
    end
  end
end
