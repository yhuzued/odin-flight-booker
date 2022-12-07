class AddReferencesToFligh < ActiveRecord::Migration[7.0]
  def change
    add_reference :flights, :origin, foreign_key: { to_table: :airports}
    add_reference :flights, :destination, foreign_key: { to_table: :airports}
  end
end
