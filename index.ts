import { WebSocketManager, WebSocketShardEvents, CompressionMethod } from '@discordjs/ws';
import { REST } from '@discordjs/rest';

const rest = new REST().setToken(process.env.DISCORD_TOKEN);

// This example will spawn Discord's recommended shard count, all under the current process.
const manager = new WebSocketManager({
  token: process.env.DISCORD_TOKEN,
  intents: 112192, // see https://discord-intents-calculator.vercel.app/
  rest,
  // compression: CompressionMethod.ZlibStream,
});

manager.on(WebSocketShardEvents.Dispatch, async (event) => {
  await fetch(process.env.ENDPOINT, {
     method: "POST",
     body: JSON.stringify(event),
  })
  console.info("event dispatched");
});

await manager.connect();

