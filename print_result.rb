class PrintResult
  # Выводим результат. Параметры:
  def print_result(answer_count, results)
    case answer_count
    when (0..3)   then results[6]
    when (4..8)   then results[5]
    when (9..13)  then results[4]
    when (14..18) then results[3]
    when (19..24) then results[2]
    when (25..29) then results[1]
    else results[0]
    end
  end
end
