class CreatePortfolios < ActiveRecord::Migration[7.1]
  def change
    create_table :portfolios do |t|
      t.string :name
      t.string :date
      t.string :tag, array: true, default: []
      t.string :topImg
      t.string :front_url
      t.string :back_url
      t.string :front_github
      t.string :back_github
      t.string :color
      t.string :about
      t.string :aboutImg
      t.string :function
      t.string :functionImg
      t.string :appeal
      t.string :appealImg
      t.string :front_skill, array: true, default: []
      t.string :back_skill, array: true, default: []
      t.string :infra_skill, array: true, default: []
      t.string :time

      
      t.timestamps
    end
  end
end
