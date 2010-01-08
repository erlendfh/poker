# encoding: utf-8
$:.unshift(File.dirname(__FILE__) + '/../../lib')

When /^I am on "([^\"]*)"$/ do |page_name|
  visit path_to(page_name)
end

When /^I fill in "([^\"]*)" with "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

When /^I press "([^\"]*)"$/ do |button|
  click_button(button)
end

Then /^I should see "([^\"]*)"$/ do |text|
  response_body.should contain(text)
end

Then /^I should see the button "([^\"]*)"$/ do |text|
  response_body.should =~ /value="#{text}"/
end

Then /^I should be on "([^\"]*)"$/ do |page|
  URI.parse(current_url).path.should == path_to(page)
end