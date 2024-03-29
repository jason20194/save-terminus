# frozen_string_literal: true

module StageOne
  def self.run(health)
    stage = 1
    while health != 0
      play_option = gets.chomp.to_i
      puts `clear`
      puts "Health = #{health}"
      puts "Stage = #{stage}"
      puts 'You are in the the Valley of Death. You quickly look around and behind you appears Ganondorfs henchman JabuJabu who is a giant killer fish. Defeat the fish to advance to the next stage. Choose a move by typing in the corresponding number:'
      # options
      puts '1) Spin slash'
      puts '2) Slingshot'
      puts '3) Throw a bomb'
      puts '4) Pick up golden sword'
      print "> "
      play_option = gets.chomp.to_i
      while play_option >= 5 
        puts "sorry that is not a valid option. Please type in an option between 1-4 followed by the enter key."
        print "> "
        play_option = gets.chomp.to_i
        end
      if play_option == 1
        puts `clear`
        puts "Health = #{health -= 25}"
        puts "Stage = #{stage}"
        puts 'You swing your sword to do a spin slash attack on JabuJabu. However before you kill JabuJabu he bites you, injuring you. You defeat JabuJabu but lose some health from the battle.'
        return health
      elsif
          play_option == 2
        puts `clear`
        puts "Health = #{health -= 50}"
        puts "Stage = #{stage}"
        puts 'You use a slingshot and aim for JabuJabus eyes. It blinds and angers him. He then splashes a whole wave onto you before retreating. You may have passed this stage but you have lost half of your health!'
        return health
      elsif
          play_option == 3
        puts `clear`
        puts 'Health = 0'
        health = 0
        puts "Stage = #{stage}"
        puts 'You throw a bomb at JabuJabu, however JabuJabu dives back into the water and laughs as the bomb detonates, killing you in the process.'
        return health
      elsif
          play_option == 4
        puts `clear`
        puts "Health = #{health}"
        puts "Stage = #{stage}"
        puts 'You pick up the golden sword, and in one swift movement cut JabuJabu into sushi. Not many can survive the golden sword, especially not a giant fish. Congratulations. You defeat JabuJabu and proceed onto the next stage.'
        return health
      end
    end
  end
end
