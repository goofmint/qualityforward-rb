require 'json'

RSpec.describe Qualityforward do
  before do
    api_key = JSON.parse(open("#{__dir__}/keys.json").read)['api_key']
    Qualityforward::Client.new api_key
  end
  
  it "has a version number" do
    expect(Qualityforward::VERSION).not_to be nil
  end

  it "Get current project" do
    p = Qualityforward::Project.get
    expect(p.id).not_to be 0
  end
end
