# TG-BOT-RabbitMQ
# Telegram Bot for Delayed Notifications

## Overview
A service for scheduling and sending delayed notifications via Telegram. The bot allows users to set reminders that will be delivered at specified times.

## Features
- Schedule notifications with custom delay
- Cancel scheduled notifications
- Check status of notifications
- Reliable delivery with retry mechanism

## Commands
- `/remind [time] [message]` - Schedule a reminder
  Example: `/remind in 2 hours buy milk`
- `/status [id]` - Check reminder status
- `/delete [id]` - Cancel a scheduled reminder

## Time Formats
- `in 30 minutes`
- `in 2 hours`
- `in 1 day`

## Architecture
- **Telegram Bot** - Handles user interactions and command parsing
- **REST API** - Processes notification requests (Go + Gin)
- **PostgreSQL** - Stores notification data and status
- **RabbitMQ** - Message queue for delayed delivery
- **Worker** - Processes scheduled notifications and sends Telegram messages

## API Endpoints
- `POST /notify` - Create new notification
- `GET /notify/:id` - Get notification status
- `DELETE /notify/:id` - Cancel notification

## Setup
1. Configure environment variables
2. Start PostgreSQL and RabbitMQ
3. Run the application
4. Interact with the bot via Telegram

## Technology Stack
- Go
- PostgreSQL
- RabbitMQ
- Telegram Bot API
- Gin Web Framework# NAPOMINANIE-TG-BOT
