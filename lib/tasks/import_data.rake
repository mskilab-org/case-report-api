# lib/tasks/import_data.rake

namespace :import do
  desc 'Import data from datafiles.json'
  task data: :environment do
    json_file_path = Rails.root.join('public', 'datafiles.json')
    json_data = File.read(json_file_path)
    data = JSON.parse(json_data)

    # Clean up existing records in the case_reports table
    CaseReport.destroy_all

    # Populate the case_reports table with data from the JSON file
    data.each do |record|
      CaseReport.create!(
        pair: record['pair'],
        tumor_type_final: record['tumor_type_final'],
        disease: record['disease'],
        primary_site: record['primary_site'],
        inferred_sex: record['inferred_sex'],
        dlrs: record['dlrs'],
        snv_count: record['snv_count'],
        sv_count: record['sv_count'],
        loh_fraction: record['loh_fraction'],
        purity: record['purity'],
        ploidy: record['ploidy'],
        beta: record['beta'],
        gamma: record['gamma']
      )
    end

    puts 'Data imported successfully!'
  end
end
