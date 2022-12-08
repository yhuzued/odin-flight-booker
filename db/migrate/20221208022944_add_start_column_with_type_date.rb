class AddStartColumnWithTypeDate < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :start, :date
  end
end
