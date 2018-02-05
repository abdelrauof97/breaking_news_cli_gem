
class Data

  def self.get_data(url)
    Scraper.get_and_sort_data(url)
  end

  def exposing_news(url)
    new_array =
    get_data.each.with_index(1) { |x,i|
      if i < 10
        hash = x[i]
        puts "----------------"
        puts "#{i}. #{hash[:title]}
        puts "ptess the link to see the news: #{hash[:link]}"
        puts "----------------"
      end
    }
  end
end
