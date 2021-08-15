class Post

  def self.post_type
    [Memo, Task, Link]
  end

  def self.create(type_index)
    return post_type[type_index].new
  end

  def initialize
    @created_at = Time.now
    @text = nil
  end

  def to_strings
  end

  def read_from_console
  end

  def save
    file = File.new(file_path, 'w:UTF-8')
    to_strings.each {|item| file.puts(item)}
    file.close
    puts "Ваша запись успешно сохранена!!!"
  end

  def file_path
    current_path = File.dirname(__FILE__)
    file_name = @created_at.strftime("#{self.class.name}_%Y-%m-%d__%H-%M-%S.txt")
    return current_path + "/" + file_name
  end

end