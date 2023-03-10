# ts3audiobot-docker

Uses [Splamy/TS3AudioBot](https://github.com/Splamy/TS3AudioBot/) in a docker container. Thanks for this great application!

## Build docker image

```bash
docker build -f Dockerfile -t ts3audiobot .
```

To update the image, just run the build command again.

## Infos

Port 58913 is used for the webinterface.

## Run

```bash
mkdir -p /opt/ts3audiobot/plugins
mkdir -p /opt/ts3audiobot/database
mkdir -p /opt/ts3audiobot/bots/default
```

Copy following files to `/opt/ts3audiobot/`:

- `data/ts3audiobot.toml` -> `/opt/ts3audiobot/ts3audiobot.toml`
- `data/rights.toml` -> `/opt/ts3audiobot/rights.toml`
- `data/bot.toml` -> `/opt/ts3audiobot/bots/default/bot.toml`

Check/Modify following files:

- `/opt/ts3audiobot/ts3audiobot.toml`
- `/opt/ts3audiobot/bots/default/bot.toml`

Create Stack:

```bash
docker stack deploy -c docker-compose.yml ts3audiobot
```
