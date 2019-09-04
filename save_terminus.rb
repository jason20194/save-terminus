# Main menu
require 'tty-prompt'
require 'tty-font'
require 'pry'
require_relative 'stage1'
require_relative 'stage2'
require_relative 'gameover'
prompt = TTY::Prompt.new
font = TTY::Font.new(:standard)
puts font.write("SAVE TERMINUS")
health = 0


def main_menu(prompt,health)
    main_menu_option = prompt.select("Choose an option?", %w(Play About Quit))
    while main_menu_option != "Quit"
        if main_menu_option == "Play"
            puts "Hello and welcome. To begin, please enter your name"
            user_name = gets.chomp
            health = 100
            puts `clear`
            puts "Hello #{user_name}. Welcome to the world of Terminus, where you must save the world from ending by defeating the evil king Ganondorf, who has reversed time on this world. Survive through the story and ganondorfs minions and you will be able to reach him. Defeat the evil king in order to save your world. Decision making is crucial in this game, as choosing the wrong decisions can lead to health loss, and may even cause death. You will start off with 100 health. Once your health reaches 0 it is game over. So plan every move very carefully! Please press enter to continue"

            health = StageOne.run(health)
            if health == 0 
                over
            end
            health = StageTwo.run(health)
            
            if health == 0
                over
            end
        elsif main_menu_option == "About"
            puts "Ganondorf has put a curse on the world Terminus where time is reversed. To prevent the worlds destruction you must defeat Ganondorf in order to reverse the time back to normal. Make decisions every stage and survive all 3 stages to reach the final stage where you will fight Ganondorf to decide the fate of Terminus." 
        elsif main_menu_option == "Quit"
            puts `clear`
        end
    end
end

main_menu(prompt,health)



# Main menu
# main_menu_option = prompt.select
# Play menu


    


    
    
   
    
        
        


    


#About the game
#1) You are in the world named Terminus. Terminus has been invaded by many monsters. Your goal is to travel the world whilst fight off all the monsters all over Terminus and defeat the evil King and save the world from doom. 


#Play menu
# puts "Hello and welcome. To begin, please enter your name"
# user_name = gets.chomp
# puts "Hello #{user_name}. Welcome to the world of Terminus, where you must save the world from ending. You will fight many monsters during your journey here. Survive through all the monsters and you will be able to reach the Evil King, who is solely responsible for all of this. Defeat the King in order to save your world. Throughout the game, you will encounter many fights along the way. Decision making is crucial in this game, as choosing the wrong decisions can lead to uneventful results, and may even cause death. You will start off with 100 health. Once your hp reaches 0 it is game over. So plan every decision very carefully."

