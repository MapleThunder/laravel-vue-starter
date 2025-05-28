# Vue Starter

A simple Laravel starter kit that uses Inertia and Vue for the front end. I decided to my own instead of using the prepared Laravel Vue starter kit because I don't like Tailwind.

## Setting up the new project

> Requires: **Docker**

Clone the starter kit then replace the git info with the new project info.

```bash
git clone https://github.com/MapleThunder/laravel-vue-starter.git PROJECT_NAME
cd PROJECT_NAME
git remote set-url origin NEW_ORIGIN
```

If this is the **first time building the app**, run `./startup.sh` to build the containers, run them, and initialize the running app.

Otherwise **start** the app with `./run.sh`.

You can **stop** the app with `./stop.sh`.

> Both the run and stop scripts are simply wrappers for `docker compose` just because it's less typing for me.
