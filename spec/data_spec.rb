
require 'spec_helper'

describe "Data class" do
  url = 'http://www.newsnow.co.uk/h/World+News/Africa/Egypt'
  context "Data is a class metiod" do
    it "it is a metiod" do
      data = Data.exposing_news(url)
    end
  end

end