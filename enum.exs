defmodule MeuModulo.Enum do
  def primeiro([]), do: nil
  def primeiro(lista), do: hd(lista)
end

# Condicionais: unless -> a menos que seja falso a condição executa o que estiver
# dentro do bloco de código

#    unless length(lista) == 0 do
#      hd(lista)
#    end
#    if length(lista) == 0 do
#      nil
#    else
#      hd(lista)
#    end
