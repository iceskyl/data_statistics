class CreateDataStatisticsCounters < ActiveRecord::Migration[6.1]
  def change
    create_table :data_statistics_counters do |t|
      t.belongs_to :owner, polymorphic: true
      t.string :counter_type
      t.integer :time_kind
      t.decimal :value, precision: 16, scale: 4
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end

    add_index :data_statistics_counters, [:owner_type, :owner_id, :counter_type, :time_kind, :start_at, :end_at], unique: true, name: :index_counters_on_columns
  end
end
