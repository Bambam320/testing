import React, { useContext, useState } from 'react';
import { MyContext } from "./MyContext";
import ReviewCardUpdate from './ReviewCardUpdate';

function ReviewCard({ review }) {
  const { setReviews, reviews } = useContext(MyContext);
  const [updateToggle, setUpdateToggle] = useState(false)

  function handleDeleteClick(e) {
    e.preventDefault()
    fetch(`/reviews/${review.id}`, {
      method: "DELETE",
    });
    const newReviews = reviews.filter((rev) => rev.id !== review.id)
    setReviews(newReviews)
  }

  function onUpdateToggle() {
    setUpdateToggle(!updateToggle)
  }

  return (
    <div className='card'>
      {updateToggle ? <ReviewCardUpdate review={review} changeToggle={onUpdateToggle}/> : <></>}
      <h2 className='title'>{review.title}</h2>
      <p>{`(${review.movie.title})`}</p>
      <p>
        <b>{review.comment}</b>
      </p>
      <p>{`Reviewd By: ${review.user.username}`}</p>
      <p>
        <b>{`Rating: ${review.rating}/5`}</b>
      </p>
      <button onClick={onUpdateToggle}>Update this review!</button>
      <button onClick={handleDeleteClick}>Delete this review!</button>
    </div>
  );
}

export default ReviewCard;
