MAP = File.read(ARGV.first).lines.map(&:strip)
RIGHT_SLOPE = ARGV[1].to_i
DOWN_SLOPE = ARGV[2].to_i

right = RIGHT_SLOPE
down = DOWN_SLOPE
trees = 0

until down >= MAP.size
  if MAP[down][right % MAP.first.size] == "#"
    trees += 1
  end

  right += RIGHT_SLOPE
  down += DOWN_SLOPE
end

puts trees
