class Alpaca < ApplicationRecord

  def make_a_sweater
    if !self.sheared
      self.update(sheared: true, sweaters_made: self.sweaters_made += 1)
    else
      puts "This alpaca has no wool"
    end
  end

end
