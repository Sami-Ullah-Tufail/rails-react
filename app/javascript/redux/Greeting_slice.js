import { createAsyncThunk } from '@reduxjs/toolkit';
import axios from 'axios';

const API_URL = 'http://localhost:3000/api/v1/greetings';

const FETCH = 'rails-react/greetings/FETCH';

export const fetchGreeting = createAsyncThunk(FETCH, async () => {
  try {
    const response = await axios.get(API_URL);
    return response.data.greeting; // Assuming the API response looks like { "text": "Hello, World!" }
  } catch (error) {
    throw error;
  }
});

const initialState = {
  greeting: '',
};

export default (state = initialState, action) => {
  switch (action.type) {
    case `${FETCH}/fulfilled`:
      return { ...state, greeting: action.payload };
    default:
      return state;
  }
};