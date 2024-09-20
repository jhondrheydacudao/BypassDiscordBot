import os
import discord
import requests
import json
from discord.ext import commands
from dotenv import load_dotenv

# Load environment variables from a .env file
load_dotenv()

OKEN = os.getenv('DISCORD_TOKEN')
API_KEY = os.getenv('E99l9NOctud3vmu6bPne')
MADE_BY = 'jhondrhey'

intents = discord.Intents.default()
intents.message_content = True

bot = commands.Bot(command_prefix='-', intents=intents)

# Presences
presences = [
    discord.Game('Your Ad-Links'),
    discord.Activity(type=discord.ActivityType.listening, name='Pop Smoke')
]
current_index = 0

# Bot events
@bot.event
async def on_ready():
    print(f'{bot.user} has connected to Discord!')
    await bot.change_presence(activity=presences[current_index])

# Helper function for making API requests
def get_key_from_api(url):
    try:
        response = requests.get(url)
        response.raise_for_status()
        data = response.json()
        return data.get('key')
    except requests.exceptions.RequestException as e:
        print(f"Error fetching key: {e}")
        return None

# Command: hydrogen
@bot.command(description='Gets your hydrogen key')
async def hydrogen(ctx, link: str):
    hwid = link.replace('https://gateway.platoboost.com/a/2569?id=', '')
    api_url = f"https://stickx.top/api-hydrogen/?hwid={hwid}&api_key={API_KEY}"
    key = get_key_from_api(api_url)

    if key:
        embed = discord.Embed(title='🔑 hydrogen Key', description='Key Bypassed!', url=link)
        embed.add_field(name='Hold to copy', value=key, inline=False)
        embed.set_thumbnail(url='https://cdn.discordapp.com/icons/924722337981530132/73e6c24fec92005c5521b58bcd8c9e5d.webp?size=128')
        embed.set_footer(text=f"Made By {MADE_BY}")
        await ctx.send(embed=embed)
    else:
        await ctx.send("Error: Could not fetch the key.")

# Command: codex
@bot.command(description='Gets your codex key')
async def codex(ctx, link: str):
    hwid = link.replace('https://mobile.codex.lol/?token=', '')
    api_url = f"https://stickx.top/api-codex/?token={hwid}&api_key={API_KEY}"
    key = get_key_from_api(api_url)

    if key:
        embed = discord.Embed(title='🔑 Codex Key', description='Key Bypassed!')
        embed.add_field(name='Hold to copy', value=key, inline=False)
        embed.set_thumbnail(url='https://media.discordapp.net/attachments/1217863434519973909/1223625451545563246/codexx.png')
        embed.set_footer(text=f"Made By {MADE_BY}")
        await ctx.send(embed=embed)
    else:
        await ctx.send("Error: Could not fetch the key.")

# Command: arceus
@bot.command(description='Gets your arceus key')
async def arceus(ctx, link: str):
    hwid = link.replace('https://spdmteam.com/key-system-1?hwid=', '').replace('&zone=Europe/Rome&os=android', '')
    api_url = f"https://stickx.top/api-arceusx/?hwid={hwid}&api_key={API_KEY}"
    key = get_key_from_api(api_url)

    if key:
        embed = discord.Embed(title='🔑 Arceus Key', description='Key Bypassed!')
        embed.add_field(name='Hold to copy', value=key, inline=False)
        embed.set_thumbnail(url='https://cdn.discordapp.com/attachments/1217863434519973909/1223626225625464893/Arceus-X-NEO-Logo.png')
        embed.set_footer(text=f"Made By {MADE_BY}")
        await ctx.send(embed=embed)
    else:
        await ctx.send("Error: Could not fetch the key.")

# Command: ping
@bot.command(description='Ping the bot to check if it is online.')
async def ping(ctx):
    await ctx.send('Pong!')

# Run the bot
bot.run
