# frozen_string_literal: true
namespace :add_data_from_csv_file do
  desc "import data from scv file"
  task :data => :environment do
    require 'csv'

    CSV.foreach('/home/giroe/Documents/proiect DM/test_V2.csv') do |row|
      id2 = row[0]
      groupId = row[1]
      matchId = row[2]
      assists = row[3].to_i
      boosts = row[4].to_i
      damageDealt = row[5]
      DBNOs = row[6].to_i
      headshotKills = row[7].to_i
      heals = row[8].to_i
      killPlace = row[9].to_i
      # puts row.inspect
      Product.create(id2: id2, groupId: groupId, matchId: matchId, assists: assists,
                     boosts: boosts, damageDealt: damageDealt, DBNOs: DBNOs,
                     headshotKills: headshotKills, heals: heals, killPlace: killPlace)
    end

  end
end
