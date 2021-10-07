require 'player'

describe Player do
  
  let(:delia) { Player.new('Delia') }
  let(:ewa) { Player.new('Ewa') }
  let(:hit_points) { Player::HIT_POINTS }

  it "returns the player name" do
    expect(delia.name).to eq 'Delia'
  end

  it "returns the hit points" do
    expect(delia.initial_hit_points).to eq hit_points
  end

end


