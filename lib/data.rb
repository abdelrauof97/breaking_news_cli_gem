
require "colorize"

class Data

  def self.get_data(url)
    Scraper.get_and_sort_data(url).reject{|x| x[:title] == ""}
  end

  def self.exposing_news(url)
    get_data(url).each.with_index(1) { |x,i|
      if i < 11
        puts ""
        puts "#{i}. #{x[:title]}".colorize(:blue)
        puts "ptess the link to see the news: "+""+ x[:link].colorize(:red)
        puts "----------------".colorize(:light_blue)
      end
    }
  end
end
