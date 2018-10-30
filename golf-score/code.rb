total_strokes = 0
total_par = 0
holes = [
  {par: 5, strokes: 0},
  {par: 4, strokes: 0},
  {par: 3, strokes: 0},
  {par: 4, strokes: 0},
  {par: 4, strokes: 0},
  {par: 3, strokes: 0},
  {par: 4, strokes: 0},
  {par: 5, strokes: 0},
  {par: 4, strokes: 0},
  {par: 5, strokes: 0},
  {par: 4, strokes: 0},
  {par: 4, strokes: 0},
  {par: 3, strokes: 0},
  {par: 4, strokes: 0},
  {par: 4, strokes: 0},
  {par: 4, strokes: 0},
  {par: 3, strokes: 0},
  {par: 5, strokes: 0}
]

holes.each do |hole|
  total_par += hole[:par]
  total_strokes += hole[:strokes]
end

puts "Total Strokes: #{total_strokes}\nTotal Par: #{total_par}"

score = total_strokes - total_par
if score >= 1
  puts "You were #{score} over par."
elsif score == 0
  puts "You were par for the course!"
else
  puts "You were #{score * -1} under par."
end