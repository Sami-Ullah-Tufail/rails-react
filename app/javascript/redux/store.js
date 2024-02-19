import { configureStore, combineReducers } from '@reduxjs/toolkit';
import greetingsReducer from './Greeting_slice';

const rootReducer = combineReducers({ greetings: greetingsReducer });
const store = configureStore({ reducer: rootReducer });

export default store;
