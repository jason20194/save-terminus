require 'tty-font'
require 'colorize'
require_relative 'save_terminus'

def over
    # binding.pry
    prompt = TTY::Prompt.new
    health = 0
    font = TTY::Font.new(:DOOM)
    puts font.write("GAME OVER").red
    puts "You have failed to save the world and the Evil king Ganondorf laughs as Terminus ends in doom. Care to try again? Type yes to continue."
    continue = gets.chomp
    if continue == "yes"
        puts `clear`
        puts "restarting game. Press enter to continue."
        main_menu(prompt, health)
    else
        puts `clear`
        abort    
    end
end