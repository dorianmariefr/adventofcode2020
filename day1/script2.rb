puts(File.read(ARGV.first).lines.map(&:strip).map(&:to_i).combination(3).select do |a, b, c|
  a + b + c == 2020
end.first.then { |a, b, c| a * b * c })
