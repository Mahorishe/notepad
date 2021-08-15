class Memo < Post

  def read_from_console
    puts 'Чтобы завершить запись наберите "end" '
    @text = []
    line = nil
    while line != "end" do
      line = STDIN.gets.chomp
      @text.push(line)
    end
    @text.pop
  end

  def to_stings
    time_string = "Создано #{@created_at.strftime("%Y.%m.%d-%H:%M:%S")} \n\r \n\r"

    return @text.unshift(time_string)
  end

end
