class WordReader
  attr_reader :lines

  def initialize(file_name)
    @lines = read_from_file(file_name)
  end

  def read_from_file(file_name)
    # Если файла не существует, сразу выходим из метода
    # Сделал сокращенное условие
    return nil unless File.exist?(file_name)
    file = File.new(file_name, "r")
    lines = file.readlines
    file.close
    return lines
  end
end
