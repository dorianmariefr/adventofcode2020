puts(File.read(ARGV.first).lines.map(&:strip).count do |line|
  min_max, letter, text = line.split
  min, max = min_max.split("-").map(&:to_i)
  letter = letter[0]

  r1 = text[min - 1] == letter
  r2 = text[max - 1] == letter

  (r1 && !r2) || (r2 && !r1)
end)
