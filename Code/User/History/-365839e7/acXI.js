function sleep(delay) {
    var start = new Date().getTime();
    while (new Date().getTime() < start + delay);
}
function attachIsImage(msgAttach) {
    var url = msgAttach.url;
    //True if this url is a png image.
    return url.indexOf("png", url.length - "png".length /*or 3*/) !== -1;
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
    if (msg.channel.id !== "1011507089245474876") return
    console.log(msg.attachments[0].url)
    console.log(msg.attachments)
    if (msg.attachments.size > 0) {
        if (msg.attachments.every(attachIsImage)){

        }
    }
    if (Date.now() >= NextMessageTime) {
        client.guilds.cache.get("886787687699333190").channels.cache.get("1011507089245474876").send('test1')
        NextMessageTime = Date.now()+delay
    }
	if (Date.now() >= NextDailyTime) {
        client.guilds.cache.get("886787687699333190").channels.cache.get("1011507089245474876").send('t!daily')
	NextDailyTime = Date.now()+86400000
	}
})
client.login(token);
