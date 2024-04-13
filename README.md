# discordhooks

`discordhooks` is a really simple utility that allows you to send discord events to a web endpoint. It's super simple and good enough for most projects that might be thinking about using it.

## When to use this

If you're thinking about creating a discord bot that does more than react to slash commands, you'll almost certainly be wanting to make use of their [gateway](https://discord.com/developers/docs/topics/gateway-events) to react to things that happen in your server.

If you're thinking about creating a bot, chances are that you're trying to also keep costs as low as possible. If you've decided to opt for a serverless platform to make this happen, something like [Val Town](https://val.town) for example, you'll be unable to make this work. Websockets and severless don't play nicely (without bundling in extra services to manage the socket connections for you).

Since most of these events can be responded to using the REST API, not back through the same websocket connection, we can easily split these two things up and keep each super simple. That's what this service is for.

# Cloud version

Right now, the cloud version of this service is designed specifically for Val Town. To make use of it, get in touch with @neverstew on the Val Town Discord.

# Self-hosted version

TODO: bear with me...

