def combine_anagrams(words)
  # YOUR CODE HERE

  # .each_char
  #   descompone las palabras por letras (ej. cars > c, a, r, s,)
  # .sort_by
  #   ordena las letras alfabeticamente (ej. c,a,r,s > a,c,r,s)
  # .join
  #   une las letras (ej. a,c,r,s > acrs)
  # .downcase
  #   formatea la cadena para que todas las letras sean minuscula
  # {}.values
  #   lo que devuelve el bloque es un hash, por lo que el values indica al group_by
  #   que agrupe por los valores del hash
  # .sort
  #   ordena las palabras dentro de cada agrupacion
  
  words.each.group_by { |w| w.each_char.sort_by(&:downcase).join.downcase }.values.sort
end
print combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'sCar', 'creams', 'scream'])