# frozen_string_literal: true

require_relative 'stage1'
require_relative 'stage2'
require 'colorize'

def test_stage_one
  # what we want the test to do
  # test stage_one method to ensure that health is not equal to 100 once updated

  # dummy data
  health = 100

  # call the method
  updated_health = StageOne.run(health)

  # write the test
  if updated_health != 100
    # the test passes
    puts 'The test passes!'.colorize(:green)
  # do not choose option 4 as health is not lost
  else
    # the test fails
    puts 'The test fails!'.colorize(:red)
  end
end
test_stage_one

def test_stage_two
  # what we want the test to do
  # test stage_two method to ensure that an integer is being returned

  # dummy data
  health = 100

  # call the method
  updated_health = StageTwo.run(health)

  # write the test
  if updated_health.class == Integer
    # the test passes
    puts 'The test passes!'.colorize(:green)
  else
    # the test fails
    puts 'The test fails!'.colorize(:red)
  end
end
test_stage_two
