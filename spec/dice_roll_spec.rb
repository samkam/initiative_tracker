require 'rspec'
require 'dice_roll'
RSpec.describe DiceRoll do
  before do
    # Do nothing
  end

  after do
    # Do nothing
  end
  let(:dice) {DiceRoll.new}
  let(:character_list) {["alice","bob", "charlie"]}
  context 'roll_one_initiative' do
    let(:dice_rolls){[1,10, 3, 20, 10]}
    fit 'rolls 1 dice by default' do
      expect(dice).to receive(:roll_d20).exactly(1).times.and_return()
      dice.roll_one_initiative
    end
  end
  context 'when roll_all_initiative called' do
    it 'succeeds' do
      expect(dice).to receive(:roll_one_initiative).exactly(character_list.count).times.and_call_original

      dice.roll_all_initiative(character_list)
        #pending 'Not implemented'
    end
  end
end