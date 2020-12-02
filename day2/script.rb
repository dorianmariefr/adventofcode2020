inputs = File.read(ARGV.first).lines.map(&:strip).map do |line|
  min_max, letter, text = line.split
  min, max = min_max.split("-").map(&:to_i)
  letter = letter[0]

  {
    min: min,
    max: max,
    letter: letter,
    text: text,
  }
end

puts(inputs.count do |input|
  count = input[:text].count(input[:letter])
  count >= input[:min] && count <= input[:max]
end)
