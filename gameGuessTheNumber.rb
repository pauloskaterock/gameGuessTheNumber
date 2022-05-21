class GuessTheNumber
    attr_reader :numberNumber
    attr_reader :winner

    def initialiaze
        @numberNumber = Random.rand(1..10)
        @winner = false
    end
    def try_to_guess(numberNumber = 0)

        if numberNumber == @numberNumber
            @winner = true
            return "you win"

        elsif numberNumber < @numberNumber
            return "the number given is higher...."
        else
            return "the number given is smaller..."
        end
    end
end

game = GuessTheNumber.new

until game.winner do

    puts "Enter a number"
    numberNumber = gets.to_i
    puts game.try_to_guess(numberNumber)

end