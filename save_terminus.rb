# frozen_string_literal: true

# gems
require 'tty-prompt'
require 'tty-font'
require 'pry'
require 'colorize'

# requiring files
require_relative 'stage1'
require_relative 'stage2'
require_relative 'stage3'
require_relative 'final_boss'
require_relative 'gameover'
require_relative 'winner'

def main_menu(prompt, health)
  health = 100
  font = TTY::Font.new(:standard)
  puts `clear`
  puts font.write('SAVE TERMINUS').yellow
  main_menu_option = prompt.select('Choose an option?', %w[Play About Quit])

  while main_menu_option != 'Quit'
    if main_menu_option == 'Play'
      puts `clear`
      puts 'Hello and welcome. To begin, please enter your name'
      print '> '
      user_name = gets.chomp
      while user_name == ""
      puts "Sorry I did not get your name. Please try again"
      print '> '
      user_name = gets.chomp
      end
      puts `clear`
      puts "Hello #{user_name}. Welcome to the world of Terminus, where you must save the world from ending by defeating the evil king Ganondorf, who has reversed time on this world. Survive through the story and Ganondorfs minions and you will be able to reach him. Defeat the evil king in order to save your world. Decision making is crucial in this game, as choosing the wrong decisions can lead to health loss, and may even cause death. You will start off with 100 health. Once your health reaches 0 it is game over. So plan every move very carefully! Please press enter to continue"

      health = StageOne.run(health)
      return over if health == 0

      health = StageTwo.run(health)
      return over if health == 0

      health = StageThree.run(health)
      return over if health == 0

      health = FinalBoss.run(health)

      if health == 0
        over
      else
        winner
      end

      main_menu_option = prompt.select('Choose an option?', %w[Play About Quit])

    elsif main_menu_option == 'About'
      puts 'Ganondorf has put a curse on the world Terminus where time is reversed. To prevent the worlds destruction you must defeat Ganondorf in order to reverse the time back to normal. Make decisions every stage and survive all 3 stages to reach the final stage where you will fight Ganondorf to decide the fate of Terminus.'

      # loop back to main menu
      main_menu_option = prompt.select('Choose an option?', %w[Play About Quit])
    end
  end
end
