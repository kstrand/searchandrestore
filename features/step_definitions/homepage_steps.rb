Then /^I choose the video as the featured homepage video$/ do
  Then %{I select "#{the.video.title}" from "Video"}
end

Given /^the video is featured on the homepage$/ do
  the.homepage = Homepage.last || Homepage.create
  the.homepage.update_attribute(:video_id, the.video.id)
end