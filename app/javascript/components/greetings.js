import React, {useEffect} from "react";
import {useDispatch, useSelector} from "react-redux";
import {fetchGreeting} from "../redux/Greeting_slice";

const Greetings = () => {
  const dispatch = useDispatch();
  const greeting = useSelector((state) => state.greetings.greeting);

  useEffect(() => {
    dispatch(fetchGreeting());
  }, []);

  return( <>
  <h2>{greeting}</h2>
  </>)
}

export default Greetings;