import { WebSocketManager, WebSocketShardEvents, CompressionMethod } from '@discordjs/ws';
import { REST } from '@discordjs/rest';

const ALL_INTENTS = 3276541;

const rest = new REST().setToken(process.env.DISCORD_TOKEN);

const manager = new WebSocketManager({
  token: process.env.DISCORD_TOKEN,
  intents: process.env.INTENTS || ALL_INTENTS,
  rest,
  // compression: CompressionMethod.ZlibStream,
});

manager.on(WebSocketShardEvents.Dispatch, async (event) => {
  const t = event?.data?.t;
  const s = event?.data?.s;
  console.info(`${s}: ${t} event dispatching...`);
  await fetch(process.env.ENDPOINT, {
     method: "POST",
     body: JSON.stringify(event),
  })
  console.info(`${s}: ${t} event dispatched.`);
});

await manager.connect();

