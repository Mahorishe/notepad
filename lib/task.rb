require 'date'

class Task < Post

  def initialize
    super
    @due_date = Time.now
  end

  def read_from_console
    puts "Что нужно сделать?"
    @text = STDIN.gets.chomp
    puts "К какому числу необходимо сдедать. Укажите в формате ДД.ММ.ГГГГ"
    input = STDIN.gets.chomp
    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Создано #{@created_at.strftime("%Y.%m.%d-%H:%M:%S")} \n\r \n\r"

    deadline = "Выполнить к #{@due_date}"

    return [deadline, @text, time_string]
  end

end