class StaticController < ApplicationController
  http_basic_authenticate_with :name => "one", :password => "class"
  def home

    theList = UrlCounter.listUrl("/a", "2017-04-04", "2017-04-24")

    respond_to do |format|
      format.html { render html: UrlCounter.presentHTML(theList).html_safe}
      format.csv { send_data UrlCounter.exportCSV(theList), filename: "urls-#{Date.today}.csv" }
    end

  end
end
