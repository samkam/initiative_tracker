class DiceRoll
  def roll_n_sided_dice(n)
    return 1 + rand(n)
  end

  def roll_d20
    roll_n_sided_dice(20)
  end


  def roll_one_initiative(modifier:0, advantage_rolls:1)
    advantage_rolls = 1 if advantage_rolls == 0

    rolls = []
    advantage_rolls.abs.times {rolls << roll_d20}

    dice_result = advantage_rolls > 0? rolls.max : rolls.min

    return dice_result + modifier

  end

  def roll_all_initiative(characters)
    characters.each do |c|
      puts "#{c} rolled a #{self.roll_one_initiative}"
    end
  end

end