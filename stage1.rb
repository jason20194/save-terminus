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
        puts "You are in the the forest of the death. You quickly look around and behind you appears a very scary ghost. Make a Decision!:"
        #options
        puts "1) Run away"
        puts "2) Panic"
        puts "3) Stab the Ghost"
        puts "4) Light up a fire"
        play_option = gets.chomp.to_i
        if  play_option == 1
            puts `clear`
            puts "Health = #{health -= 25}"
            puts "Stage = #{stage}"
            puts "You tried to run but the ghost catches up to you and you get so scared you run into a tree. You have lost some of your health"
            return health
        elsif
            play_option == 2
            puts `clear`
            puts "Health = #{health -= 25}"
            puts "Stage = #{stage}"
            puts "You panic and trip over a rock. You have lost some of your health"
            return health
        elsif
            play_option == 3
            puts `clear`
            puts "Health = #{health -= 50}"
            puts "Stage = #{stage}"
            puts "You stab the ghost however it does nothing to the ghost. You swing so hard that you accidently stab yourself. You have lost half your health!"
            return health
        elsif
            play_option == 4
            puts `clear`
            puts "Health = #{health}"
            puts "Stage = #{stage}"
            puts "You light up a fire and the ghost gets scared away. You have made it safely out of the forest of death."
            return health
        end
    end
    end
end 