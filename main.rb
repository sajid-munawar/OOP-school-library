require './options'

def main
  option = Option.new

  loop do
    choice = option.run
    case choice
    when 1..8
      option.process(choice)
    when 9
      puts 'App is closing.....'
      break
    else
      puts 'INVALID OPTION'
    end
    option.separator
  end
end

main
