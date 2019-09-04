# # stage 1
# def stage1()
#     health = 100
#     stage = 1
#     play_option = gets.chomp.to_i
#     puts `clear`
#     puts "Health = #{health}"
#     puts "Stage = #{stage}"
#     puts "You are in the the forest of the death. You quickly look around and behind you appears a very scary ghost. Make a Decision!:"
#     #options
#     puts "1) Run away"
#     puts "2) Panic"
#     puts "3) Stab the Ghost"
#     puts "4) Light up a fire"
#     play_option = gets.chomp.to_i
#     if play_option == 1
#         puts `clear`
#         puts "Health = #{health - 25}"
#         puts "Stage = #{stage}"
#         puts "You tried to run but the ghost catches up to you and you get so scared you run into a tree. You have lost some of your health"
#     elsif
#         play_option == 2
#         puts `clear`
#         puts "Health = #{health - 25}"
#         puts "Stage = #{stage}"
#         puts "You panic and trip over a rock. You have lost some of your health"
#     elsif
#         play_option == 3
#         puts `clear`
#         puts "Health = #{health - 50}"
#         puts "Stage = #{stage}"
#         puts "You stab the ghost however it does nothing to the ghost. You swing so hard that you accidently stab yourself. You have lost half your health!"
#     elsif
#         play_option == 4
#         puts `clear`
#         puts "Health = #{health}"
#         puts "Stage = #{stage}"
#         puts "You light up a fire and the ghost gets scared away. You have made it safely out of the forest of death."
#     else
#         puts "Please select a valid option"
#         play_option = gets.chomp.to_i 
#     end
# end

module StageOne
    def self.run(health)
        stage = 1

    while health != 0
        play_option = gets.chomp.to_i
        puts `clear`
        puts "Health = #{health}"
        puts "Stage = #{stage}"
        puts "You are in the the Valley of Death. You quickly look around and behind you appears Ganondorfs henchman JabuJabu who is a giant killer fish. Defeat the fish to advance to the next stage. Choose a move:"
        #options
        puts "1) Spin slash"
        puts "2) Slingshot"
        puts "3) Throw a bomb"
        puts "4) Pick up golden sword"
        play_option = gets.chomp.to_i
        if  play_option == 1
            puts `clear`
            puts "Health = #{health -= 25}"
            puts "Stage = #{stage}"
            puts "You swing your sword to do a spin slash attack on JabuJabu. However before you kill JabuJabu he bites you, injuring you. You defeat JabuJabu but lose some health from the battle."
            return health
        elsif
            play_option == 2
            puts `clear`
            puts "Health = #{health -= 50}"
            puts "Stage = #{stage}"
            puts "You use a slingshot and aim for JabuJabus eyes. It blinds and angers him. He then splashes a whole wave onto you before retreating. You may have passed this stage but you have lost half of your health!"
            return health
        elsif
            play_option == 3
            puts `clear`
            puts "Health = 0"
            health = 0
            puts "Stage = #{stage}"
            puts "You throw a bomb at JabuJabu, however JabuJabu dives back into the water and laughs as the bomb detonates, killing you in the process." 
            return health
        elsif
            play_option == 4
            puts `clear`
            puts "Health = #{health}"
            puts "Stage = #{stage}"
            puts "You pick up the golden sword, and in one swift movement cut JabuJabu into sushi. Not many can survive the golden sword, especially not a giant fish. Congratulations. You defeat JabuJabu and proceed onto the next stage."
            return health
        end
    end
    end
end 