def plurality_check(quantity, noun)
  if quantity.to_f == 1
    noun
  else

    case noun[-2..-1]
    when /ch/, /sh/, /.s/, /.x/, /.z/
      noun + 'es'
    when /[aeiou]y/
      noun + 's'
    when /.y/
      noun[0..-2] + 'ies'
    when /.f/
      noun[0..-2] + 'ves'
    when /fe/
      noun[0..-3] + 'ves'
    else
      noun + 's'
    end
  end
end
