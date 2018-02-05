
class Data

  def initialize(url)
    @news_array = Scraper.get_and_sort_data(url)
    exposing_news
  end

  def exposing_news
    news_array.each.with_index(1) { |x,i|
      hash = x[i]
      puts "----------------"
      puts "#{i}. #{hash[:title]}"
      puts "ptess the link to see the news: #{hash[:link]}"
      puts "----------------"
    }
  end

end
