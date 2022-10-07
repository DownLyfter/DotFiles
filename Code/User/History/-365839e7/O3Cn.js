function sleep(delay) {
    var start = new Date().getTime();
    while (new Date().getTime() < start + delay);
}

const {
    token,
    delay
}=require("./config.json")
console.log(`Delay is set to ${delay/1000} seconds. Logging in!`)

const { Client } = require('discord.js-selfbot-v13');
const client = new Client(); // All partials are loaded automatically

client.on('ready', async () => {
  console.log(`${client.user.username} is ready!`);
})
var NextDailyTime = Date.now()
var NextMessageTime = Date.now()+delay
client.on('messageCreate', async msg => {
    if (message.attachments.size > 0) {
        if (message.attachments.every(attachIsImage)){
            //something
        }
    }
})
client.login(token);
