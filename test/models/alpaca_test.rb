require 'test_helper'

class AlpacaTest < ActiveSupport::TestCase
  test '#make_a_sweater' do
    nata = Alpaca.find_by(name: "Natalama")
    baldy = Alpaca.find_by(name: "Baldy")

    nata_starting_sweaters = nata.sweaters_made
    baldy_starting_sweaters = baldy.sweaters_made

    nata.make_a_sweater
    baldy.make_a_sweater

    assert nata.sheared
    assert_equal nata_starting_sweaters + 1, nata.sweaters_made
    assert_equal baldy_starting_sweaters, baldy.sweaters_made
  end
end
