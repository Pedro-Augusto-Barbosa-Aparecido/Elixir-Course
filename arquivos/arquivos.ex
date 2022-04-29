defmodule MeuModulo.Arquivos do
  def ler (arquivo) do
    case File.read(arquivo) do
      {:ok, conteudo} -> IO.puts(conteudo)
      {:error, :enoent} -> "Arquivo inexistente"
      {:error, :eacces} -> "Arquivo sem permissão para leitura"
      _ -> "Erro desconhecido"
    end
  end
  def escrever (arquivo) do
    {:ok, file} = File.open(arquivo, [:write, :utf8])
    IO.write(file, "Escrito com .write\n\n")
    IO.puts(file, "Escrito com .puts")
    File.close(file)
  end
end