class PagesController < ApplicationController
  def index
    @title = "Home"
    @documents = Document.find(:all)
  end
  
  def about
    @title = "About Prism"
  end

  def whatever
    @title = 'Whatever'
    @doc = Document.find(2)
  end
end
