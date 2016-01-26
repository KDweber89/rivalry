class SubtitleToTitle < ActiveRecord::Migration
  def change
    add_column :items, :sub_title, :string
  end
end
