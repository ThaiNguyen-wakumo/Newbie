/**
 * @format
 */

import React, { Component } from "react";
import { AppRegistry } from "react-native";

//Redux

import { createStore } from "redux";
import { provider } from "react-redux";

import allReducers from "./reducers";

let store = createStore();
const App = () => <Provider store={store}> </Provider>;

AppRegistry.registerComponent("testRN2", () => Robot);
