# Vue 3 + TypeScript + Vite

This template should help get you started developing with Vue 3 and TypeScript in Vite. The template uses Vue 3 `<script setup>` SFCs, check out the [script setup docs](https://v3.vuejs.org/api/sfc-script-setup.html#sfc-script-setup) to learn more.

## Recommended IDE Setup

- [VS Code](https://code.visualstudio.com/) + [Volar](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (and disable Vetur) + [TypeScript Vue Plugin (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin).

## Type Support For `.vue` Imports in TS

TypeScript cannot handle type information for `.vue` imports by default, so we replace the `tsc` CLI with `vue-tsc` for type checking. In editors, we need [TypeScript Vue Plugin (Volar)](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin) to make the TypeScript language service aware of `.vue` types.

If the standalone TypeScript plugin doesn't feel fast enough to you, Volar has also implemented a [Take Over Mode](https://github.com/johnsoncodehk/volar/discussions/471#discussioncomment-1361669) that is more performant. You can enable it by the following steps:

1. Disable the built-in TypeScript Extension
   1. Run `Extensions: Show Built-in Extensions` from VSCode's command palette
   2. Find `TypeScript and JavaScript Language Features`, right click and select `Disable (Workspace)`
2. Reload the VSCode window by running `Developer: Reload Window` from the command palette.


## 使用

### mpromonet/webrtc-streamer

```bash
docker run -p 8000:8000 -it mpromonet/webrtc-streamer
```

1. 测试

- 运行容器，指定 rtsp 地址
```bash
docker run -p 8000:8000 -it mpromonet/webrtc-streamer -n raspicam -u "rtsp://admin:zhengfawei123@183.245.217.45:37654/cam/realmonitor?channel=1&subtype=0"
```

- 浏览器直接访问 http://localhost:8000/


### bluenviron/mediamtx

```bash
docker run --rm -it -e MTX_PROTOCOLS=tcp -p 8554:8554 -p 1935:1935 -p 8888:8888 -p 8889:8889 -p 9997:9997 -p 8890:8890/udp -v $PWD/projects/rtsp-webrtc-demo/mediamtx.yml:/mediamtx.yml bluenviron/mediamtx
```

1. 测试

- 运行容器

```
docker run --rm -it -e MTX_PROTOCOLS=tcp -p 8554:8554 -p 1935:1935 -p 8888:8888 -p 8889:8889 -p 9997:9997 -p 8890:8890/udp -v $PWD/projects/rtsp-webrtc-demo/mediamtx.yml:/mediamtx.yml bluenviron/mediamtx
```

- 浏览器访问 http://127.0.0.1:8889/test

### ffmpegwasm/ffmpeg.wasm

- https://blog.scottlogic.com/2020/11/23/ffmpeg-webassembly.html
