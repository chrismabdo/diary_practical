require 'entry_log'

describe EntryLog do
    it 'will add an entry to its record' do
        entry = EntryLog.add(title: "Test Title", body: "Test body, so on and so forth")
        
        #expect(entry).to be_kind_of EntryLog
        expect(entry.title).to eq "Test Title"
        expect(entry.body).to eq "Test body, so on and so forth"
    end
end