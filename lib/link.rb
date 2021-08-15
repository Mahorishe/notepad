class Link < Post

  def initilize
    super
    @url = ""
  end

  def read_from_console
    puts "Укажите ссылку на интересующий Вас ресурс"
    @url = STDIN.gets.chomp
    puts "Введите краткое описание содержимого этой ссылки"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано #{@created_at.strftime("%Y.%m.%d-%H:%M:%S")} \n\r \n\r"

    return [@url, @@text, time_string]
  end

end