require 'discordrb'
require 'net/http'
require 'json'

TOKEN = 'your bot token nigga'
API_KEY = 'E99l9NOctud3vmu6bPne'
MADE_BY = 'YourName'

bot = Discordrb::Commands::CommandBot.new(
  token: TOKEN,
  prefix: '-',
  intents: Discordrb::Intents.all
)

presences = [
  Discordrb::Presence.new(type: 'WATCHING', name: 'Your Ad-Links'),
  Discordrb::Presence.new(type: 'LISTENING', name: 'Pop-Smoke')
]
current_index = 0

bot.heartbeat 15
bot.ready do |event|
  bot.ws.presence = presences[current_index]
  current_index = (current_index + 1) % presences.size
end

bot.command(:hydrogen, description: 'Gets your hydrogen key') do |event, link|
  hwid = link.sub('https://gateway.platoboost.com/a/2569?id=', '')
  response = Net::HTTP.get(URI("https://stickx.top/api-hydrogen/?hwid=#{hwid}&api_key=#{API_KEY}"))
  key = JSON.parse(response)['key']
  event.respond(
    embed: Discordrb::Webhooks::Embed.new(
      title: '🔑 hydrogen Key',
      url: link,
      description: 'Key Bypassed!',
      fields: [{ name: 'Hold to copy', value: key, inline: false }],
      thumbnail: { url: 'https://cdn.discordapp.com/icons/924722337981530132/73e6c24fec92005c5521b58bcd8c9e5d.webp?size=128' },
      footer: { text: "Made By #{MADE_BY}" }
    )
  )
end

bot.command(:codex, description: 'Gets your codex key') do |event, link|
  hwid = link.sub('https://mobile.codex.lol/?token=', '')
  response = Net::HTTP.get(URI("https://stickx.top/api-codex/?token=#{hwid}&api_key=api key"))
  key = JSON.parse(response)['key']
  event.respond(
    embed: Discordrb::Webhooks::Embed.new(
      title: '🔑 Codex Key',
      description: 'Key Bypassed!',
      fields: [{ name: 'Hold to copy', value: key, inline: false }],
      thumbnail: { url: 'https://media.discordapp.net/attachments/1217863434519973909/1223625451545563246/codexx.png?ex=661a8901&is=66081401&hm=30863126bf2d9b7d1df0340ef0631c0cbdc5d36b7214592f4faf6adce0ec5b71&=&format=webp&quality=lossless&width=978&height=978' },
      footer: { text: "Made By #{MADE_BY}" }
    )
  )
end

bot.command(:arceus, description: 'Gets your arceus key') do |event, link|
  hwid = link.sub('https://spdmteam.com/key-system-1?hwid=', '').sub('&zone=Europe/Rome&os=android', '')
  response = Net::HTTP.get(URI("https://stickx.top/api-arceusx/?hwid=#{hwid}&api_key=api key"))
  key = JSON.parse(response)['key']
  event.respond(
    embed: Discordrb::Webhooks::Embed.new(
      title: '🔑 Arceus Key',
      description: 'Key Bypassed!',
      fields: [{ name: 'Hold to copy', value: key, inline: false }],
      thumbnail: { url: 'https://cdn.discordapp.com/attachments/1217863434519973909/1223626225625464893/Arceus-X-NEO-Logo.png?ex=661a89ba&is=660814ba&hm=7ed62e1a264d3914c27976cc0385d034bba7a926323e3894ad57aa8739287f7f&' },
      footer: { text: "Made By #{MADE_BY}" }
    )
  )
end

bot.command(:hoho, description: 'Gets your hoho hub key') do |event, link|
  hwid = link.sub('https://hohohubv-ac90f67762c4.herokuapp.com/api/getkeyv2?hwid=', '')
  response = Net::HTTP.get(URI("https://stickx.top/api-hohohubv/?hwid=#{hwid}&api_key=api key"))
  key = JSON.parse(response)['key']
  event.respond(
    embed: Discordrb::Webhooks::Embed.new(
      title: '🔑 Hoho Key',
      description: 'Key Bypassed!',
      fields: [{ name: 'Hold to copy', value: key, inline: false }],
      thumbnail: { url: 'https://media.discordapp.net/attachments/1217863434519973909/1223625452103401592/hoho.jpg?ex=661a8901&is=66081401&hm=d9113229a580f4bcf13b3843a9523e1f09c72fa42dc0a2249e56fd9b40ce215e&=&format=webp&width=978&height=978' },
      footer: { text: "Made By #{MADE_BY}" }
    )
  )
end

bot.command(:delta, description: 'Gets your delta key') do |event, link|
  hwid = link.sub('https://gateway.platoboost.com/a/8?id=', '')
  response = Net::HTTP.get(URI("https://stickx.top/api-delta/?hwid=#{hwid}&api_key=api key"))
  key = JSON.parse(response)['key']
  event.respond(
    embed: Discordrb::Webhooks::Embed.new(
      title: '🔑 Delta Key',
      url: link,
      description: 'Key Bypassed!',
      fields: [{ name: 'Hold to copy', value: key, inline: false }],
      thumbnail: { url: 'https://media.discordapp.net/attachments/1217863434519973909/1223625451860267162/deltaa.jpg?ex=661a8901&is=66081401&hm=9037596b5e0209832fd6b1791ff39793d2c2c5799dd75f2d0ca2c7b45ddcb5f2&=&format=webp&width=480&height=480' },
      footer: { text: "Made By #{MADE_BY}" }
    )
  )
end

bot.command(:trigon, description: 'Gets your trigon key') do |event, link|
  hwid = link.sub('https://trigonevo.com/getkey/?hwid=', '')
  response = Net::HTTP.get(URI("https://stickx.top/api-trigon/?hwid=#{hwid}&api_key=api key"))
  key = JSON.parse(response)['key']
  event.respond(
    embed: Discordrb::Webhooks::Embed.new(
      title: '🔑 Trigon Key',
      url: link,
      description: 'Key Bypassed!',
      fields: [{ name: 'Hold to copy', value: key, inline: false }],
      thumbnail: { url: 'https://media.discordapp.net/attachments/1217863434519973909/1223625452350869594/trigon.jpg?ex=661a8901&is=66081401&hm=ba3a5494031f2271f1fa987ac67d4e131b9b094aa167c78468b1180dda2dfee3&=&format=webp&width=450&height=450' },
      footer: { text: "Made By #{MADE_BY}" }
    )
  )
end

bot.command(:vega, description: 'Gets your vegax key') do |event, link|
  hwid = link.sub('https://pandadevelopment.net/getkey?service=vegax&hwid=', '').sub('&provider=linkvertise', '')
  response = Net::HTTP.get(URI("https://stickx.top/api-vegax/?hwid=#{hwid}&api_key=api key"))
  key = JSON.parse(response)['key']
  event.respond(
    embed: Discordrb::Webhooks::Embed.new(
      title: '🔑 Your key has been bypassed.',
      url: link,
      description: 'Key Bypassed!',
      fields: [{ name: 'Hold to copy', value: key, inline: false }],
      thumbnail: { url: 'https://cdn.discordapp.com/attachments/1217863434519973909/1223625715409354802/vegax.png?ex=661a8940&is=66081440&hm=9112e53acdaf44414483365f845142204d3589a84abf16a6e329bebd142ab37f&' },
      footer: { text: "Made By #{MADE_BY}" }
    )
  )
end

bot.command(:ping, description: 'Ping the bot to check if it is online.') do |event|
  event.respond 'Pong!'
end

bot.run
