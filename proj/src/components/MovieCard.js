//Update styling for movies and buttons
//Create review list 
//Provide update and delet button for each review
//add filter in reviews and movies to show users associated data
//update styling

import React,{useContext} from "react";
import "../components/card.css";
import { Link } from "react-router-dom";
import { MyContext } from "./MyContext";
const MovieCard = ({ movie }) => {
  const{setMovieToReview} = useContext(MyContext)
function handleClick(){
  setMovieToReview(movie)
}
  return (
    

    <div className='card'>
      <h2 className='title'>{movie.title}</h2>
      <img className='poster-image' src={movie.poster_url} alt='' />
      <p>
        <b>{movie.description}</b>
      </p>
      <p> {`${movie.category} | ${movie.year} | ${movie.length} mins`} </p>
      <br />
      <br />
      <br />
      <Link to='/review/new'>
      <button onClick={handleClick}>Create a review</button>
      </Link>
      
    </div>
  );
};

export default MovieCard;
