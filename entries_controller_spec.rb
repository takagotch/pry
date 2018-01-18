#binding.pry
describe '#show' do
  let!(:entry){ FactoryGirl.create(:entry) }

  it 'succeeds ti show an entry' do
    get :show, id: entry.url
    binding.pry
    expect(response).to be_ok
    expect(assigns[:entry]).to eq(entry)
  end
end

