require 'player'

describe Player do
  
  let(:delia) { Player.new('Delia') }

  it "returns the player name" do
    expect(delia.name).to eq 'Delia'
  end
end


