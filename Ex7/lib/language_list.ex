defmodule LanguageList do
  def new(), do: []

  def add(languages, language), do: [language | languages]

  def remove([_ | languages]), do: languages

  def first([language | _]), do: language

  def count(list), do: length(list)

  def functional_list?(list), do: "Elixir" in list
end
