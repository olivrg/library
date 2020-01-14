import React from "react";
import { render } from "react-dom";
import Library from "../components/Library";
import Provider from "../components/Provider";
import UserInfo from "../components/UserInfo";

render(
  <Provider>
    <UserInfo />
    <Library />
  </Provider>,
  document.querySelector("#root")
);
