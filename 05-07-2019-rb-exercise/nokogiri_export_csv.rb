require 'nokogiri'
require 'open-uri'
require 'pry'
require 'csv'

url = Nokogiri::HTML(open('https://en.wikipedia.org/wiki/2019_Major_League_Soccer_season'))
body = url.css('div#content.mw-body').css('div#bodyContent.mw-body-content').css('div#mw-content-text.mw-content-ltr').css('div.mw-parser-output').css('table.wikitable.sortable').first
infos = body.css('tbody')

CSV.open('mls_team_by_nokogiri.csv', 'wb') do |csv|

	binding.pry
	
	csv << ['Team','Head coach','Captain','Shirt sponsor']
	infos.css('tr').each do |data|

  			data0 = data.css('td').map { |td| td.text.chomp }
  			next if data0.empty?
  			csv << data0
	end
end

puts "done"

