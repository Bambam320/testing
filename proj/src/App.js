import { Route, Switch, useHistory } from "react-router-dom";
import React, { useState, useEffect } from "react";
import { MyContext } from "./components/MyContext";
import "./App.css";
import Signup from "./pages/Signup";
import ReviewForm from "./pages/ReviewForm";
import Login from "./pages/Login";
import Navbar from "./components/Navbar";
import MovieForm from "./pages/MovieForm";
import MovieList from "./pages/MovieList";
import ReviewList from "./pages/ReviewList";
function App() {
  const [movieToReview, setMovieToReview] = useState({});
  const [movies, setMovies] = useState([]);
  const [reviews, setReviews] = useState([]);
  const history = useHistory();

  const [user, setUser] = useState(null);
  useEffect(() => {
    fetch("/movies")
      .then((r) => r.json())
      .then((movies) => {
        setMovies(movies);
      });
  }, []);
  useEffect(() => {
    fetch("/reviews")
      .then((r) => r.json())
      .then((reviews) => {
        setReviews(reviews);
      });
  }, []);

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  function handleLogOutClick() {
    fetch("/logout", { method: "DELETE" }).then((res) => {
      if (res.ok) {
        setUser(null);
        history.push("/login");
      }
    });
  }

  return (
    <MyContext.Provider
      value={{
        user,
        setUser,
        movies,
        setMovies,
        reviews,
        setReviews,
        movieToReview,
        setMovieToReview,
      }}
    >
      <div className='App'>
        <div className='container'>
          <Navbar handleLogOutClick={handleLogOutClick} user={user} />
          <Switch>
            <Route exact path='/movies'>
              <MovieList movies={movies} user={user} />
            </Route>
            <Route path='/movie/new'>
              <MovieForm />
            </Route>
            <Route path='/login'>
              <Login setUser={setUser} />
            </Route>
            <Route path='/signup'>
              <Signup setUser={setUser} />
            </Route>
            <Route path='/review/new'>
              <ReviewForm user={user} />
            </Route>
            <Route path='/reviews'>
              <ReviewList user={user} />
            </Route>
          </Switch>
        </div>
      </div>
    </MyContext.Provider>
  );
}

export default App;
