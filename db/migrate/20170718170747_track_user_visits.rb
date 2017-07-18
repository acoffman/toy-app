class TrackUserVisits < ActiveRecord::Migration[5.1]
  def change
    create_table(:user_visits) do |t|
      t.text :name, null: false
      t.integer :visit_count, default: 0
    end
  end
end
