puts(File.read(ARGV.first).lines.map(&:strip).map(&:to_i).combination(2).select do |a, b|
  a + b == 2020
end.first.then { |a, b| a * b })
