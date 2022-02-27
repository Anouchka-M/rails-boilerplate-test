require 'csv'

# desc "Take datas from donnees.csv and create them in Application"

# task :import => [:environment] do
#   file = "../../donnees.csv"
#   CSV.foreach(file, headers: true) do |row|
#     application_hash = row.to_hash
#     application = Application.where(id: product_hash["id"])

#     if application.count == 1
#       application.first.update_attributes(application_hash)
#     else
#       Application.create!(application_hash)
#     end
#   end
# end

namespace :data do
  desc "Import datas from donnees.csv and create them in Application"
  task import_apps: :environment do
    csv_path = File.join("#{Rails.root}/donnees.csv")
    csv_content = File.read(csv_path)
    csv = CSV.parse(csv_content, headers: true, header_converters: :symbol, converters: :all)

    csv.each do |row|
      begin
        Application.find_or_create_by(row.to_hash())
      rescue
        puts "Error: #{row} will not be loaded"
        Rails.logger.info "Error: #{row} will not be loaded"
        next
      end
    end
  end
end