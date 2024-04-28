defmodule LanguageList do
  def new(), do: []

  def add(languages, language) do
    [language | languages]
  end

  def remove([_ | languages]), do: languages

  def first([language | _]), do: language

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
