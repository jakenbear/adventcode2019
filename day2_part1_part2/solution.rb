# Advent Of Code 2019
# https://adventofcode.com/2019/day/1
# Part 1 / Part 2
# Read in the directions
$directions = File.read("input.txt").split(",").map(&:strip)

def runcomputer(noun,verb)
  #Cursor Setup
  $directions[1] = noun.to_i
  $directions[2] = verb.to_i
  cursor = 0
  cursor_max = $directions.size

  # Run program
  loop do
    #Read in Values
    opp = $directions[cursor].to_i
    input1 = $directions[cursor + 1].to_i
    input2 = $directions[cursor + 2].to_i
    input_result = $directions[cursor + 3].to_i
    opcode = [opp,input1,input2,input_result]
    #Check for exit
    puts opcode
    if opp == 99
      puts "EXITING PROGRAM..."
      break
    end

    #operation 1
    if opp == 1
      a1 = $directions[input1].to_i
      a2 = $directions[input2].to_i
      $directions[input_result] = a1 + a2
    end

    #operation 2
    if opp == 2
      b1 = $directions[input1].to_i
      b2 = $directions[input2].to_i
      $directions[input_result] = b1 * b2
    end

    #Next Op
    cursor += 4
    return if cursor > cursor_max
  end #do
end

# RUN COMPUTER HERE!
runcomputer(12,2)

#FINAL OUTPUT
puts "Part 1: Final OUTPUT: #{$directions[0]}"

#PART 2 - TEST INPUTS
$base_input = $directions
key_output = "19690720"
$noun = ""
$verb = ""

for key_noun in 0..99 do
  for key_verb in 0..99 do
    # TEST FOR input_result
    $directions = $base_input
    runcomputer(key_noun,key_verb)
    runcomputer(12,2)


    if $directions[0].to_s == key_output.to_s
      puts "RESULT: #{$directions[0]}"
      puts "FOUND HIT TO PRODUCE RESULT = #{key_output}"
      puts $noun = key_noun.to_s
      puts $verb = key_verb.to_s
      break
    end
  end
end

puts "Key Noun: #{key_noun}"
puts "Key Verb: #{key_verb}"
