require 'rails_helper'

describe 'Tips API' do
  it 'sends a tip' do
    tip1 = Tip.create!(description: "Turn it off. Energy conservation is one of the most important things you can do to reduce your carbon footprint.")
    tip2 = Tip.create!(description: "Turn it off. Energy conservation is one of the most important things you can do to reduce your carbon footprint.")

    get '/api/vi/tips'

    expect(response).to be_successful

    parsed = JSON.parse(response.body, symbolize_names: true)
    binding.pry
    # expect(parsed.description)
  end
end
