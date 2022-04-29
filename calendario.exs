defmodule MeuModulo.Calendario do
  def abreviacao_dia_da_semana(dia_semana) do
    case dia_semana do
       :Terca -> "Ter"
       :Segunda -> "Seg"
        _ -> "Dia Inválido"
    end
  end
  def abreviacao_dia_da_semana3(dia_semana) do
    cond do
      dia_semana == :Segunda -> "Seg"
      dia_semana == :Terca -> "Ter"
      true -> "Dia inválido"
    end
  end
  def abreviacao_dia_da_semana(:Segunda), do: "Seg"
  def abreviacao_dia_da_semana(:Terca), do: "Ter"
  def abreviacao_dia_da_semana(:Quarta), do: "Qua"
  def abreviacao_dia_da_semana(:Quinta), do: "Qui"
  def abreviacao_dia_da_semana(_), do: "Dia Inválido"
end