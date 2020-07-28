require 'rails_helper'

describe 'FAQ endpoint' do
  it 'returns an index of FAQ questions and answers' do
    faq1 = Question.create(faq: 'Overview', answer: 'Solarizer is a web app for solar energy enthusiasts seeking estimates on electricity production of a photovoltaic (PV) system based on a few simple inputs.')
    faq2 = Question.create(faq: 'Get Started', answer: 'Users provide information about the system \'s location, basic design parameters, and an optional historical monthly energy usage. Solarizer calculates estimates of the system\'s annual and monthly electricity production, and an estimate of the value of that electricity.')

    get api_v1_faq_path

    expect(response).to be_successful

    parsed = JSON.parse(response.body, symbolize_names: true)

    expect(parsed.length).to eq(2)
    expect(parsed).to include({"faq": faq1.faq, "answer": faq1.answer})
    expect(parsed).to include({"faq": faq2.faq, "answer": faq2.answer})
  end
end
