defmodule MeuModulo do
    import IO, only: [puts: 1] # importa apenas a função puts do módulo IO
    import Kernel, except: [inspect: 1] # importa tudo do módulo Kernel exceto a funçãp inspect

    alias MeuModulo.Math, as: MyMath # gera um apelido para o módulo

    require Integer

    def ola_mundo do
        inspect(MyMath.soma(2, 3))
    end
    def soma_2 do
        soma = &(&1 + 2)
        puts(soma.(1))
    end
    def exibe_se_eh_par(numero) do
        puts("O numero eh par? #{numero} => #{Integer.is_even(numero)}")
    end
    defp inspect(parametro) do
        puts("Comecando a inspecao")
        puts(parametro)
        puts("Terminando a inspecao")
    end
end

# função anônima exemplo: fn (parametro) -> parametro * 2 end
# or
# funcção anônima exemplo: &(&1 * 2)
