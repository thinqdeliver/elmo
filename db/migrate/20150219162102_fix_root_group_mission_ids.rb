class FixRootGroupMissionIds < ActiveRecord::Migration
  def up
    execute("UPDATE form_items, forms SET form_items.mission_id = forms.mission_id WHERE form_items.form_id = forms.id")
  end

  def down
  end
end
