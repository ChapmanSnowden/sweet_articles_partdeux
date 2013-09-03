class CreateTagLabels < ActiveRecord::Migration
  def up
    create_table :tag_labels do |t|
      t.string :unique_tags
    end
  end

  def down
    drop_table :tag_labels
  end
end
