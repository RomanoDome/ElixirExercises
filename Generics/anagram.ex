# Write ​anagram?(word1, word2)​ that returns true if its parameters areanagrams.

defmodule Anagram do
  def anagram(word1, word2) do
    Enum.sort(word1) == Enum.sort(word2)
  end
end

#Example: Anagram.anagram('cat', 'act') -> true

