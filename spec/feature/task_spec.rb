require "spec_helper.rb"
require "rails_helper"
require 'capybara/rspec'

feature "Get into #new make new task" do
	scenario "User visit #new & send request" do
		visit "tasks/new"
		fill_in 'task_title', :with => "Testing title"
		fill_in 'task_content', :with => "Testing content"
		click_button 'save'
		expect(page).to have_text("任務列表")
	end
end
feature "Get into #edit edit task" do
	scenario "User visit #edit & send request" do
		visit "tasks/1/edit"
		fill_in 'task_title', :with => "Testing title"
		fill_in 'task_content', :with => "Testing content"
		click_button 'save'
		expect(page).to have_text("任務列表")
	end
end
feature "DELETE a task" do
	scenario "send delete to tasks/1" do
		page.driver.delete("/tasks/1")
		expect(page).to have_text("任務列表")
	end
end