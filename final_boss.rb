# frozen_string_literal: true

module FinalBoss
  def self.run(health)
    stage = 'final'
    while health != 0
      play_option = gets.chomp.to_i
      puts `clear`
      puts "Health = #{health}"
      puts "Stage = #{stage}"
      puts 'You have made it this far into the adventure. However before you appears the evil King Ganondorf, who doesnt care about anything about you but your demise. Defeat the Evil Ganondorf. Pick a move by typing in the corresponding number:'
      # options
      puts '1) Fire attack'
      puts '2) Sword slash'
      puts '3) Ice attack'
      puts '4) Fairy attack'
      print "> "
      play_option = gets.chomp.to_i
      while play_option >= 5
        puts "sorry that is not a valid option. Please type in an option between 1-4 followed by the enter key."
        print "> "
        play_option = gets.chomp.to_i
        end
      if play_option == 1
        puts `clear`
        puts 'Health = 0'
        health = 0
        puts "Stage = #{stage}"
        puts 'You throw fire at Ganondorf. However in an evil laugh he deflects it with his sword, turning you into ashes.'
        return health
      elsif
          play_option == 2
        puts `clear`
        puts 'Health = 0'
        health = 0
        puts "Stage = #{stage}"
        puts 'You slash Ganondorf with the sword. However he laughs, blocks it with his own sword and says YOU FOOL! did you really think you could defeat someone as skilled as me in a sword fight. HA and in one swift movement he cuts you into half.'
        return health
      elsif
          play_option == 3
        puts `clear`
        puts 'Health = 0'
        health = 0
        puts "Stage = #{stage}"
        puts 'you try to cast an ice spell on ganondorf. As you cast the spell, ganondorf is able to counter your ice attack with his fiery ring. You become overwhelmed by the power and die a hot fiery death.'
        return health
      elsif
          play_option == 4
        puts `clear`
        puts "Health = #{health}"
        puts "Stage = #{stage}"
        puts "You throw a fairy at Ganondorf. At first the attack seems useless. Ganondorf laughs at you and just as he is about to finish you off, the fairy transforms into the most powerful sword known as Godsend, which can even defeat Gods. Just in time you are able to send one swift blow into Ganondorfs chest. Ganondorf stutters and suddenly falls over, with no sign of life. Ganondorf disappears into dust and drops an hourglass. You are able to shatter the hourglass which reverses time. At last, Terminus is free from the curse! Congratulations! You are Terminus's saviour!"
        return health
      end
    end
  end
end
