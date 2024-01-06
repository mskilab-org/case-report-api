class CreateCaseReports < ActiveRecord::Migration[6.0]
  def change
    create_table :case_reports do |t|
      t.text :pair
      t.text :tumor_type_final
      t.text :disease
      t.text :primary_site
      t.text :inferred_sex
      t.float :dlrs
      t.integer :snv_count
      t.integer :sv_count
      t.float :loh_fraction
      t.float :purity
      t.float :ploidy
      t.float :beta
      t.float :gamma

      t.timestamps
    end

    add_index :case_reports, :pair, unique: true
    add_index :case_reports, :tumor_type_final
    add_index :case_reports, :disease
    add_index :case_reports, :primary_site
    add_index :case_reports, :inferred_sex
  end
end
