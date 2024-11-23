class CreateBackSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :back_skills do |t|
      t.string :name
      t.string :rank
      t.string :tag
      t.string :about
      t.string :icon

      t.timestamps
    end
  end
end
