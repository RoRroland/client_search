require 'spec_helper'

describe ClientSearch do
  subject { ClientSearch.process(path:) }

  let(:path) { data_path('clients.json') }

  it 'does have a VERSION constant' do
    expect(ClientSearch.const_defined?('VERSION')).to be(true)
  end

  describe '.process' do
    it 'returns an instance of ClientSearch::Json' do
      expect(ClientSearch.process(path: data_path('clients.json')).class).to eq(ClientSearch::Json)
    end
  end

  describe '.parse' do
    context 'when searching for partially matching name' do
      let(:full_name) { 'Mich' }

      it 'returns an array of matching names' do
        expect(subject.parse(params: { full_name: }).names).to eq(
          [
            {
              'email' => 'michael.williams@outlook.com',
              'full_name' => 'Michael Williams',
              'id' => 4
            },
            {
              'email' => 'michael.brown@inbox.com',
              'full_name' => 'Michael Brown',
              'id' => 10
            }
          ]
        )
      end
    end

    context 'with duplicate emails' do
      it 'returns an array of emails having duplicate' do
        expect(subject.parse.emails).to eq(%w(jane.smith@yahoo.com))
      end
    end
  end
end
