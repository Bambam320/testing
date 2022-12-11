import React, { useState } from "react";
import { useHistory } from "react-router-dom";
import "./Signup.css";

function Signup({ setUser }){
  const [username, setUserName] = useState("");
  const [password, setPassword] = useState("");
  const [passWordConfirmation, SetPasswordConfirmation] = useState("");
  const [errors, setErrors] = useState([]);
  const history = useHistory();



  function handleSubmit(e) {
    e.preventDefault();
    setErrors([])
    fetch("/signup", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        username,
        password,
        password_confirmation: passWordConfirmation,
      }),
    }).then((res) => {
      if (res.ok) {
        res.json().then((user) => setUser(user));
        history.push("/movies")
      } else {
        res.json().then((err) => setErrors(err.error));
      }
      setUserName("")
      setPassword("")
      SetPasswordConfirmation("")
    });
  }

  return (
    <form onSubmit={handleSubmit} className='auth-form'>
      <h2>Sign up</h2>
      <label>
        <span>username:</span>
        <input
          required
          type='text'
          onChange={(e) => setUserName(e.target.value)}
          value={username}
        />
      </label>
      <label>
        <span>password:</span>
        <input
          required
          type='password'
          onChange={(e) => setPassword(e.target.value)}
          value={password}
        />
      </label>
      <label>
        <span>confirm password:</span>
        <input
          required
          type='password'
          onChange={(e) => SetPasswordConfirmation(e.target.value)}
          value={passWordConfirmation}
        />
      </label>
      <button className='btn'>Sign up</button>
      {errors.map((error) => {
       return  <span key = {error} className='error'>{error}</span>;
      })}
    </form>
  );
};

export default Signup;
