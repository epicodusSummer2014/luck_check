require ("rspec")
require ("luck_check.rb")

describe ('it compares to halves of a number string to see if sums equal') do

  it ('compares') do
    luck_check(123456).should(eq(false))
  end
  it ('compares') do
    luck_check(123006).should(eq(true))
  end
  it ('handles odd number of inputted digits') do
    luck_check(17935).should(eq(true))
  end
  it ('handle non integers') do
    luck_check('check').should(eq(false))
  end
end





