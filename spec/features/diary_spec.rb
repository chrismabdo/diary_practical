feature '# adds an entry' do
    scenario 'wants to add a diary entry to entry log' do
        visit('/add')
        fill_in('title', with: "Entry Day 1")
        fill_in('title', with: "Today was Monday")
        click_button "Submit Entry"
        expect(page).to have_content "Entry Added!"
    end
end