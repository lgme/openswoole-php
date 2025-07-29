# PHP WebSocket Chat with Open Swoole
A simple WebSocket chat application built with PHP and [Open Swoole](https://openswoole.com/). The frontend is a static HTML client, and the backend is a PHP WebSocket server.

## Features
- Real-time chat using WebSockets
- Multiple clients can join and exchange messages
- Dockerized setup for easy development

## Requirements
- Docker & Docker Compose

## Installation

1. **Clone the repository:**
```bash
git clone https://github.com/lgme/openswoole-php
```` 
- cd <your-project-directory>

2. **Build and start the containers:**
```bash
docker-compose up --build -d
```
This will start the WebSocket server on port `9501`.

## Usage
1. **Open the chat client:**
- Open once or more `src/index.html` in your browser to simulate multiple clients.

2. **Connect and chat:**
    - The client connects to `ws://127.0.0.1:9501`.
    - Type a message and click "Send Message" to chat with other connected clients.

<img width="377" height="419" alt="image" src="https://github.com/user-attachments/assets/84aa65f5-1849-45e7-a2fc-f1b637c0564a" />
<img width="372" height="419" alt="image" src="https://github.com/user-attachments/assets/5980eff2-af9e-4c9c-bfe5-e8bd613584d0" />

## References
- [WebSocket with PHP (dev.to)](https://dev.to/robertobutti/websocket-with-php-4k2c)
- [Build a WebSocket server in PHP without any library (piehost.com)](https://piehost.com/websocket/build-a-websocket-server-in-php-without-any-library)
