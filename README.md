# A Two-Way Messagin Bot for Telegram

This bot can be used to communicate between people and a group chat similarly to a share email box. 

The way it works is that a private message sent to the bot is anonymously forwarded to a group chat. If in the group chat someone replys to the forwarded message, the reply is forwarded back to the original sender, again anonymously.

# Usage

## Setting up with BotFather

* Set-up a bot using [BotFather](https://t.me/botfather) and receive a bot token.
* In BotFather set the privacy mode such that the bot has access to all messages by `/help -> /setprivacy -> Disable`.
* Set-up a group chat and add your bot.

## Setup docker to your computer or server
[Setup docker](https://docs.docker.com/get-started/)

## Build docker image
```
docker compose up
```
Or if you want to set it to run in the background
```
docker compose up -d
```

# Develop
## Clone repo and install libraries
```
git clone https://github.com/ari-viitala/telegram-messaging-bot.git
cd telegram-messaging-bot

virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
```

Using a text editor in `telegram-messaging-bot.py` add the bot token you received from BotFather as the `BOT_TOKEN` variable.

Start the bot.
```
python telegram-messaging-bot.py
```

Got to the group chat and type `/whoami`. The bot should reply with your chat's ID.

Edit `telegram-messagin-bot.py` again and add the received chat ID as `CHAT_ID` variable.

Start the bot again
```
python telegram-messaging-bot.py
```

I recommend running the bot on a server in a terminal window for example using Tmux.

Now everything should work. Test the bot by sending it a private message and replying to it from the group chat.

