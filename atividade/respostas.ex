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
  

end
