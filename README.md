# MCDUPad

MCDUPad is a vanilla JavaScript + HTML client application that MCDU (Multipurpose Control and Display Unit) interface, connected to a Ruby WebSocket server for low-latency message handling.

---

## Prerequisites

- Ruby (for the WebSocket server)
- Bundler (`gem install bundler`) to install Ruby dependencies
- Foreman (`gem install foreman`) to run both server and client
s - Python 3 (for serving the frontend client)

## Installation

```bash
cd server
bundle install
cd ..
cp .env.example .env
```

## Instructions

1. Run `foreman start`
3. Open your browser and go to:
```
http://<YOUR_IP>:3000
```
