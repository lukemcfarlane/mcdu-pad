# MCDUPad

MCDUPad is a vanilla JavaScript + HTML client application that MCDU (Multipurpose Control and Display Unit) interface, connected to a Ruby WebSocket server for low-latency message handling.

---

## Instructions

### Server

1. Navigate to the server folder:
```bash
cd server
```
2. Install dependencies:
```bash
bundle install
```
3. Start the Ruby WebSocket server:
```bash
ruby server.rb
```

### Client

1. Navigate to the client folder:
```bash
cd client
```
2. Serve the frontend page using python:
```bash
python3 -m http.server 3000 --bind localhost
```
3. Open your browser and go to:
```
http://<YOUR_IP>:3000
```
