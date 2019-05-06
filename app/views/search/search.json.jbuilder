json.movies do
  json.array!(@movies) do |movie|
    json.name movie.name
    json.director movie.director
  end
end

