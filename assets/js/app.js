// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from "../css/app.css";

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import "phoenix_html";

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"

import { Socket } from "phoenix";
import LiveSocket from "phoenix_live_view";

let Hooks = {};
Hooks.AlertSound = {
  updated() {
    const lastPlay = document
      .getElementById("noot")
      .getAttribute("phx-last-play");

    if (!!lastPlay) {
      document.getElementById("noot").play();
    }
  }
};

Hooks.PenguinAnimation = {
  updated() {
    const pinguImage = document.querySelector(".image");
    pinguImage.classList.add('animated');
    setTimeout(function(){
      pinguImage.classList.remove('animated')
    }, 4000)
  }
}

let liveSocket = new LiveSocket("/live", Socket, { hooks: Hooks });
liveSocket.connect();

// LiveView Hooks JS Lifecycle Events
// Mounted - the element has been added to the DOM and its server LiveView has finished mounting
// Updated - the element has been updated in the DOM by the server
// Destroyed - the element has been removed from the page, either by a parent update or the parenet being removed entirely.
// Disconnected - the element's parent LiveView has been disconnected from the server
// Reconnected - the element's parent LiveView has reconnected to the server.


// Add phx-hook binding to the dom element, give it a name
// Define a hook in app.js
// Choose JS event
// Define what you want done.
// Pass the hook to the LiveView Socket (line 35)




