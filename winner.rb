# frozen_string_literal: true

require 'tty-font'
require 'colorize'
require_relative 'save_terminus'

def winner
  prompt = TTY::Prompt.new
  health = health.to_s
  font = TTY::Font.new(:DOOM)
  puts font.write('CONGRATULATIONS').green
  `say "wow you are so good"`
  puts "Congratulations on being Terminus's saviour. I hope you enjoyed this game! Feel free to play again and choose different decisions this time. Type ok to return to the main menu."
  print "> "
  ok = gets.chomp
  if ok == 'ok'
    puts `clear`
    main_menu(prompt, health)
  else
    puts `clear`
    abort
  end
end
