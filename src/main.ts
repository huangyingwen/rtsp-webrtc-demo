import "@eyevinn/whep-video-component";
import { createApp } from "vue";
import "./style.css";
import App from "./App.vue";

const app = createApp(App);

app.mount("#app");

app.config.compilerOptions.isCustomElement = (tag) => {
  return tag.startsWith("whep-video");
};
