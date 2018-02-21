class PrintResult
  # Выводим результат. Параметры:
  def print_result(answer_count, results)
    case answer_count
      when (0..3)
        results[6]
      when (4..8)
        results[5]
      when (9..13)
        results[4]
      when (14..18)
        results[3]
      when (19..24)
        results[2]
      when (25..29)
        results[1]
      else
        results[0]
    end
  end
end
