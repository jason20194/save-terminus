# Main menu
require 'tty-prompt'
require 'tty-font'
require_relative 'stage1'

prompt = TTY::Prompt.new
font = TTY::Font.new(:doom)
puts font.write("SAVE TERMINUS")
health = 100
module Game
    #Stage 1
    
    def self.stage2(health)
        stage = 2
    
       while health != 0
        play_option = gets.chomp.to_i
        puts `clear`
        puts "Health = #{health}"
        puts "Stage = #{stage}"
        puts "You are in the the cave of ice. You quickly look around and behind you is a giant mutated polar bear who looks like he is about to kill you. Make a Decision!:"
        #options
        puts "1) Throw ice"
        puts "2) Give it food"
        puts "3) Growl"
        puts "4) Play Dead"
        play_option = gets.chomp.to_i
        if  play_option == 1
            puts `clear`
            puts "Health = #{health -= 25}"
            puts "Stage = #{stage}"
            puts "You throw ice at the polar bear. He gets angry and chases you out of the cave. Whilst running for your life you slip over on ice and almost break your legs. You have lost some of your health"
            return health
        elsif
            play_option == 2
            puts `clear`
            puts "Health = 0"
            puts "Stage = #{stage}"
            puts "You give food to the polar bear but after eating the food it is still hungry. It eats you for dinner."
            return health
        elsif
            play_option == 3
            puts `clear`
            puts "Health = #{health -= 50}"
            puts "Stage = #{stage}"
            puts "You growl pretending to be a polar bear. The mutated polar bear growls too and within a few seconds appears its whole family. They all trample over you. You have lost a substancial amount of health!"
            return health
        elsif
            play_option == 4
            puts `clear`
            puts "Health = #{health}"
            puts "Stage = #{stage}"
            puts "You pretend to have been fatally injured and collapse. The polar bear walks away and once you see that he is completely out of your sight, you hurry out of the cave."
            return health
        end
    end
end
end  

def main_menu(prompt,health)
    main_menu_option = prompt.select("Choose an option?", %w(Play About Quit))
    while main_menu_option != "Quit"
        if main_menu_option == "Play"
            puts "Hello and welcome. To begin, please enter your name"
            user_name = gets.chomp
            puts `clear`
            puts "Hello #{user_name}. Welcome to the world of Terminus, where you must save the world from ending. You will fight many monsters during your journey here. Survive through all the monsters and you will be able to reach the Evil King, who is solely responsible for all of this. Defeat the King in order to save your world. Throughout the game, you will encounter many fights along the way. Decision making is crucial in this game, as choosing the wrong decisions can lead to uneventful results, and may even cause death. You will start off with 100 health. Once your hp reaches 0 it is game over. So plan every decision very carefully. Please press enter to continue"
            health = StageOne.run(health)
            health = Game.stage2(health)

        elsif main_menu_option == About
            puts "You are in the world named Terminus. Terminus has been invaded by many monsters. Your goal is to travel the world whilst fight off all the monsters all over Terminus and defeat the evil King and save the world from doom. 
        "
        break
        elsif main_menu_option == Quit
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

