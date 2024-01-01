defmodule Atividade do

  #Questão 01
  def mundo do
    IO.puts "Olá mundo!"
  end

  #Questão 02
  def exibirnome do
    IO.puts "Digite seu nome: "
    nome = IO.gets("") |> String.trim()
    IO.puts "Olá #{nome}!"
  end

  #Questão 03
  def exibiridade do
    IO.puts "Digite seu nome: "
    nome = IO.gets("") |> String.trim()

    IO.puts "Digite seu ano de nascimento: "
    ano_nascimento_str = IO.gets("") |> String.trim()
    ano_atual = DateTime.utc_now().year
    ano_nascimento = String.to_integer(ano_nascimento_str)
    idade = ano_atual - ano_nascimento

    IO.puts "Olá #{nome}, você tem #{idade}"
  end

  #Questão 04
  def imc(nome, peso_kg, altura_cm) do
    IO.puts "Digite seu nome: "
    nome = IO.gets("") |> String.trim() |> String.to_float()

    IO.puts "Digite seu peso: "
    peso_kg = IO.gets("") |> String.trim() |> String.to_float()

    IO.puts "Digite sua altura (em centrímetros): "
    altura_cm = IO.gets("") |> String.trim() |> String.to_float()
    altura_m = altura_cm /100

    imc = peso_kg / (altura_m * altura_m)
    IO.puts "Olá #{nome}, seu IMC é de #{imc}."
  end

  #Questão 05
   defmodule CalculadoraIMC do
    def calcular_imc(nome, peso_kg, altura_cm) do
      altura_m = altura_cm / 100.0
      imc = peso_kg / (altura_m * altura_m)

      "Olá #{nome}, seu IMC é de #{imc}."
    end
  end

    IO.puts "Digite seu nome:"
    nome = String.trim(IO.gets(""))

    IO.puts "Digite seu peso em Kg:"
    peso_kg = String.to_float(String.trim(IO.gets(""))) || 0.0

    IO.puts "Digite sua altura em centímetros:"
    altura_cm = String.to_float(String.trim(IO.gets(""))) || 0.0

    mensagem_imc = CalculadoraIMC.calcular_imc(nome, peso_kg, altura_cm)
    IO.puts mensagem_imc

  #Questão 06
  defmodule SequenciaInversa do
    def ler_e_exibir_inverso(n) do
      IO.puts "Digite uma sequência de #{n} números inteiros:"
      numeros = Enum.reverse(Enum.map(1..n, fn _ -> String.to_integer(IO.gets("") |> String.trim()) end))

      IO.puts "Sequência na ordem inversa: #{numeros}"
    end
  end

    IO.puts "Digite a quantidade de números na sequência:"
    quantidade_numeros = String.to_integer(String.trim(IO.gets(""))) || 0

    SequenciaInversa.ler_e_exibir_inverso(quantidade_numeros)

end
