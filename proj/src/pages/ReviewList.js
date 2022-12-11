import React,{useContext} from "react";
import { MyContext } from "../components/MyContext";

import ReviewCard from '../components/ReviewCard.js'

function ReviewList () {
  const { reviews } = useContext(MyContext);

  return (
    <div className='project-list'>
       <section>
         {reviews.map((review) => (
           <ReviewCard key={review.id} review={review}/>
         ))}
       </section>
    </div>
  );
};

export default ReviewList;
