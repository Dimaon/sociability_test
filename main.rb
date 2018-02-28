require_relative "print_result.rb"
require_relative "test.rb"
require_relative "word_reader.rb"

# Соберем путь к файлу со ответами и вопросами из пути к файлу, где лежит программа и
# относительно пути к файлу words.txt.
questions_file_name = File.dirname(__FILE__) + "/data/questions.txt"
answers_file_name = File.dirname(__FILE__) + "/data/answers.txt"

test = Test.new
result = PrintResult.new
questions_read = WordReader.new
answers_read = WordReader.new

# Создаем массивы вопросов и ответов
questions = questions_read.read_from_file(questions_file_name)
answers = answers_read.read_from_file(answers_file_name)

# Выводим вопросы
test.ask_question(questions)

test.calc_result

puts "Считаем результат..."

sleep 2

print_result = result.print_result(test.answer_count,answers)

puts "Результат: #{print_result}"
