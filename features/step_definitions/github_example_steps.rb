Given /^a user is on the github homepage$/ do
  visit "http://github.com"
end

When /^the user enters "([^\"]*)" into the search box$/ do |text|
  on_page_with :github_search do |page|
    fill_in page.search_form.input.attr('name').value, :with => text
  end
end

When /^the user clicks the magnifying glass icon$/ do
  on_page_with :github_search do |page|
    click page.search_form.submit.attr('alt').value
  end
end

When /^the user clicks on the "([^\"]*)" link$/ do |text|
  click_link text
end

Then /^the user is on a github repository details page$/ do
  on_page_with :github_repo_details do |page|
    # page.should be_valid
    page.perform :login, 'email', 'password'
  end
end

Then /^the user is on the "([^\"]*)" github repository details page$/ do |repo_name|
  on_page_with :github_repo_details do |page|
    page.repo_details.name == repo_name
  end
end

Then /^the user is on a github repository details page which belongs to "([^\"]*)"$/ do |author|
  on_page_with :github_repo_details do |page|
    page.repo_details.author == author
  end
end