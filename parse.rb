require 'mechanize'

mechanize = Mechanize.new
page = mechanize.get('https://afisha.relax.by/clubs/minsk/')
events = {}
page.search('.schedule__event').each do |event|
  events[event.text.strip] = event.at('a[href]').attr('href')
end
p events