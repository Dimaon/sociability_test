class WordReader

  def read_from_file(file_name)
    # Если файла не существует, сразу выходим из метода
    if !File.exist?(file_name)
      return nil
    end

    file = File.new(file_name, "r")
    lines = file.readlines
    file.close
    return lines
  end

end
