class Test
  # Сделал константы для ответов
  POSITIVE_ANSWER = "да"
  NEGATIVE_ANSWER = "нет"
  DEFAULT_ANSWER = "иногда"

  def initialize()
    @answer_count = 0
    @answers = []
  end

  # Вынес в метод проверку ввода пользователем
  def user_input_correct?(user_input)
    user_input == POSITIVE_ANSWER ||
    user_input == DEFAULT_ANSWER ||
    user_input == NEGATIVE_ANSWER
  end

  # Задаем вопросы и записываем ответы в массив
  def ask_question(questions)
    questions.each do |question|
      puts "Вопрос: #{question}"
      user_input = nil
      until user_input_correct?(user_input)
        # Просим пользователя ввести в консоли 'Да', 'Нет' или 'Иногда'
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
        if answer == POSITIVE_ANSWER
          @answer_count += 2
        elsif answer == DEFAULT_ANSWER
          @answer_count += 1
        end
      end
  end
end
