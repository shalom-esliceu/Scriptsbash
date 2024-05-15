#!/bin/bash

# Notificació de missatges del sistema per Telegram usant un Bot

TOKEN="6892086955:AAGudaEj-B48-a3Eesh31W9PVQujTVVVECM"
ID="6749980078"
MENSAJE="🧏‍♂️"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"
