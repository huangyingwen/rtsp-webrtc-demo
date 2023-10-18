<script setup lang="ts">
import { onMounted, onUnmounted, ref } from "vue";
import HelloWorld from "./components/HelloWorld.vue";
import WHEPClient from "./whep.js";

const elVideoWhepRef = ref<HTMLVideoElement>(null);

let webRtcServer;
onMounted(() => {
  webRtcServer = new WebRtcStreamer(
    "video",
    location.protocol + "//" + location.hostname + ":8000",
  );
  webRtcServer.connect(
    "rtsp://admin:zhengfawei123@183.245.217.45:37654/cam/realmonitor?channel=1&subtype=0",
    undefined,
    "rtptransport=tcp&timeout=60",
  );

  elVideoWhepRef.value.muted = true;
  elVideoWhepRef.value.autoplay = true;
  elVideoWhepRef.value.playsInline = true;
  new WHEPClient(elVideoWhepRef.value, "http://127.0.0.1:8889/test/");
});

onUnmounted(() => {
  webRtcServer.disconnect();
});
</script>

<template>
  <div>
    <a href="https://vitejs.dev" target="_blank">
      <img src="/vite.svg" class="logo" alt="Vite logo" />
    </a>
    <a href="https://vuejs.org/" target="_blank">
      <img src="./assets/vue.svg" class="logo vue" alt="Vue logo" />
    </a>
  </div>
  <div class="video">
    <div>
      <video style="width: 100%; height: 100%" id="video" />
    </div>
    <div>
      <video style="width: 100%; height: 100%" ref="elVideoWhepRef" />
      <!-- <iframe
        style="width: 100%; height: 100%"
        src="http://127.0.0.1:8889/test"
        scrolling="no"
      ></iframe> -->
    </div>
  </div>
  <HelloWorld msg="Vite + Vue" />
</template>

<style scoped>
.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}

.video {
  /* display: flex; */

  > div {
    /* flex: 1; */
    height: 600px;
  }
}
</style>
