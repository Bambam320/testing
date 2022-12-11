import React from "react";
import "./Navbar.css";
import { Link } from "react-router-dom";
import Rotten from "../images/potatohead.jpeg";
import LoggedIn from "./LoggedIn";
const Navbar = ({ handleLogOutClick, user }) => {
  return (
    <div className='navbar'>
      <ul>
        <li className='logo'>
          <img src={Rotten} alt='rotten potato' />
          <span>Rotten Potatoes</span>
        </li>
        <li>

          <Link to='/movies'>Movies</Link>
          <Link to='/reviews'>Reviews</Link>
          {user ? (
            <></>
          ) : (
            <>
              {" "}
              <Link to='/login'>Login</Link>
              <Link to='/signup'>Signup</Link>{" "}
            </>
          )}
          {!user ? <></> : <LoggedIn user={user} />}
        </li>
        <li>
          <button className='btn' onClick={handleLogOutClick}>
            Logout
          </button>
        </li>
      </ul>
    </div>
  );
};

export default Navbar;
