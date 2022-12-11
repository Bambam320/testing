import React, { useEffect, useState } from "react";
import MovieCard from "../components/MovieCard";
import { Link } from "react-router-dom";

const MovieList = ({ movies, user }) => {
  const [filter, setFilter] = useState('')
  const [filteredMovies, setFilteredMovies] = useState([])

  useEffect(() => {
    if (filter === '') {
      setFilteredMovies(movies)
    } else {
      setFilteredMovies(user.movies)
    }
  }, [filter])
  
  console.log("filterfilter", filteredMovies)
  console.log("useruser", user)

  function handleChange(e) {
    setFilter(e.target.value)
  }

  return (
    <>
      <select
        onChange={handleChange}
      >
        <option value=''>Filter Movies by User</option>
        <option value='myMovies'>My movies</option>
        {/* <option value='notMyMovies'>Not my movies</option> */}
      </select>
      <div>
        <Link to="movie/new">
          <button>Create a New Movie</button>
        </Link>
        <section>
          {filteredMovies.map((movie) => (
            <MovieCard key={movie.id} movie={movie} />
          ))}
        </section>
      </div>
    </>
  );
};

export default MovieList;
