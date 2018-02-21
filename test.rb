class Test
  def initialize()
    @answer_count = 0
    @answers = []
  end

  # Задаем вопросы и записываем ответы в массив
  def ask_question(questions)
    questions.each do |question|
      puts "Вопрос: #{question}"
      user_input = nil
      until (user_input == "да" || user_input == "иногда" || user_input == "нет")
        # Просим пользователя ввести в консоли 'yes' или 'no'
        puts "Введите 'Да', 'Нет' или 'Иногда' и нажмите Enter"
        user_input = STDIN.gets.chomp.downcase
      end
      # Записываем в массив ответы, чтобы потом их проверить и посчитать баллы
      @answers << user_input
    end
  end

  # Рассчитываем результат
  def calc_result
      @answers.each do |answer|
        if answer == "да"
          @answer_count += 2
        elsif answer == "иногда"
          @answer_count += 1
        end
      end
  end

  def answer_count
    @answer_count
  end
end
