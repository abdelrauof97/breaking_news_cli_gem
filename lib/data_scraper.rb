require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.get_data(profile_link)
    scraper = new
    doc = Nokogiri::HTML(open(profile_link))
    binding.pry
  end

end

# ruby lib/data_scraper.rb
