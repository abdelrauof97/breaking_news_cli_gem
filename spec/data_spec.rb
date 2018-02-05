
require 'spec_helper'

describe "Data class" do
  url = 'http://www.newsnow.co.uk/h/World+News/Africa/Egypt'
  context "Data is a class" do
    it "it is a class metiod called #get_data" do
      data = Data.get_data(url)
    end
  end
  context "Data is a class" do
    it "it is a class metiod called #exposing_news" do
      exposed_data = Data.exposing_news(url)
    end
  end

end
