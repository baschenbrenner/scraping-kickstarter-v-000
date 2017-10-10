require 'nokogiri'
require 'pry'


def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end


# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image: project.css("div.project-thumbnail a img").attribute("src").value
# blurb: project.css("p.bbcard_blurb").text
# location: project.css('span.location-name').text
# percent_funded: project.css('li.funded').first.css('strong').children.text.gsub("%"," ").to_i



create_project_hash
