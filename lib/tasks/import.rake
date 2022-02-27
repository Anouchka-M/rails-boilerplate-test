require 'csv'

desc "Take datas from donnees.csv and create them in Application"

task :import => [:environment] do
  file = "../../donnees.csv"
  CSV.foreach(file, headers: true) do |row|
    application_hash = row.to_hash
    application = Application.where(id: product_hash["id"])

    if application.count == 1
      application.first.update_attributes(application_hash)
    else
      Application.create!(application_hash)
    end
  end
end