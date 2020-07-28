require 'rails_helper'

describe 'Tips Endpoint' do
  it 'returns a random tip' do
    tip1 = Tip.create!(description: "Turn it off. Energy conservation is one of the most important things you can do to reduce your carbon footprint.")
    tip2 = Tip.create!(description: "Electronics that are plugged in still consume energy.  Unplug unused electronics to save money on your energy bill!")
    tips = [tip1.description, tip2.description]

    get api_v1_tips_path

    expect(response).to be_successful

    parsed = JSON.parse(response.body, symbolize_names: true)

    expect(parsed.length).to eq(1)
    expect(tips).to include(parsed[:description])
  end
end
