class DropLectures < ActiveRecord::Migration
  def up
    drop_table :lectures
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
