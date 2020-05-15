class CreateIcecreams < ActiveRecord::Migration[6.0]
  def change
    create_table :icecreams do |t|
      t.string :flavor

      t.timestamps
    end
  end
end
