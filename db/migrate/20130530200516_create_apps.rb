class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :url
      t.string :code_url
      t.string :description
      t.string :email

      t.timestamps
    end
  end
end
