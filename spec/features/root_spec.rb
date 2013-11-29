require 'spec_helper'

feature 'Home page' do
  scenario 'loading home page with logo brand', js: true do
    visit '/'
    expect(page).to have_content 'PaySlip App'
  end
end

feature 'Payslips button' do
  scenario 'loading Payslips page', js: true do
    visit '/'
    within(:xpath, "/html/body/div[1]/div/div/div[2]/div") do
      click_on 'Payslips'
    end
    expect(page).to have_content 'Create Payslips'
  end
end

feature 'Payslips button' do
  scenario 'loading CSV manager page', js: true do
    visit '/'
    within(:xpath, "/html/body/div[1]/div/div/div[3]/div") do
      click_on 'CSV Manager'
    end
    expect(page).to have_content 'CSV Manager'
  end
end





