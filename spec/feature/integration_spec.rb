# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'harry potter'
      fill_in 'Author', with: 'jk rowling'
      fill_in 'Price', with: 20
      fill_in 'Published date', with: Date.new(1999, 03, 27)
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('harry potter')
      expect(page).to have_content('jk rowling')
      expect(page).to have_content(20)
      expect(page).to have_content('1999-03-27')
    end

    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'The Three-Body Problem'
      fill_in 'Author', with: 'Liu Cixin'
      fill_in 'Price', with: 11
      fill_in 'Published date', with: Date.new(2008, 03, 27)
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('The Three-Body Problem')
      expect(page).to have_content('Liu Cixin')
      expect(page).to have_content(11)
      expect(page).to have_content('2008-03-27')
    end

    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'The Lightning Thief'
      fill_in 'Author', with: 'Rick Riordan'
      fill_in 'Price', with: 6
      fill_in 'Published date', with: Date.new(2005, 03, 27)
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('The Lightning Thief')
      expect(page).to have_content('Rick Riordan')
      expect(page).to have_content(6)
      expect(page).to have_content('2005-03-27')
    end

    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Title', with: 'The Hunger Games'
      fill_in 'Author', with: 'Suzanne Collins'
      fill_in 'Price', with: 12
      fill_in 'Published date', with: Date.new(2008, 03, 27)
      click_on 'Create Book'
      visit books_path
      expect(page).to have_content('The Hunger Games')
      expect(page).to have_content('Suzanne Collins')
      expect(page).to have_content(12)
      expect(page).to have_content('2008-03-27')
    end
  end