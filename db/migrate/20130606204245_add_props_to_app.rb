class AddPropsToApp < ActiveRecord::Migration
  def up
    add_column :apps, :props, :integer, :default => 0
  end

  def down
    remove_column :apps, :props
  end

end
