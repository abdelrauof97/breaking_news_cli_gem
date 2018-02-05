require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.get_data(url)
    scraper = new
    doc = Nokogiri::HTML(open(url))
    news = doc.css(".newsfeed a")
  end

  def self.get_and_sort_data(url)
    data = get_data(url)
    data_array = []
    data.each { |n|
      title = n.text
      link = n.attr("href")
      data_array << {title: title, link: link}
    }
    data_array
  end
end

# ruby lib/data_scraper.rb
