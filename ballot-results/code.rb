#build vote results
vote_results = []
4.times do |precinct_index|
  vote_results[precinct_index] = []
  3.times do |candidate_index|
    vote_results[precinct_index][candidate_index] = rand(20..500)
  end
end

candidates = [
  'Mary Sue',
  'Sally Jane',
  'Billy Joe'
]

#list out vote results
vote_results.each_with_index do |precinct_results, precinct_index|
  puts "**In precinct #{precinct_index + 1}:**"

  candidates.each_with_index do |candidate, candidate_index|
    puts "* #{candidate} got #{vote_results[precinct_index][candidate_index]} votes"
  end

  puts ""
end

### put your code here

puts vote_results.inspect

puts "Precinct 1 had #{vote_results[0].reduce(:+)} votes"

max_votes = vote_results[3].max
puts "#{candidates[vote_results[3].index(max_votes)]} won Precinct 4"

puts "Mary Sue had #{vote_results.reduce(0) { |votes, precinct| votes += precinct[0] }} votes"
puts "Billy Joe had #{vote_results.reduce(0) { |votes, precinct| votes += precinct[2] }} votes"
puts "Sally Jane had #{vote_results.reduce(0) { |votes, precinct| votes += precinct[1] }} votes"
puts "There were #{vote_results.map { |precinct| precinct.reduce(:+).to_i}.reduce(:+)} votes in total"

candidate_results = [0, 0, 0]
# Get votes for each candidate
vote_results.each do |precinct|
  precinct.each_with_index { |votes, index| candidate_results[index] += votes}
end

puts "#{candidates[candidate_results.index(candidate_results.max)]} had the most votes (#{candidate_results.max})"