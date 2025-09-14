// Connect to the Ruby WebSocket server
const ws = new WebSocket("ws://localhost:8080");

ws.onopen = () => {
    console.log("Connected to WebSocket server");
};

ws.onclose = () => {
    console.log("Disconnected from server");
};

ws.onerror = (err) => {
    console.error("WebSocket error:", err);
};

document.getElementById("sendBtn").addEventListener("click", () => {
    ws.send("Hello from the browser!");
    console.log("Message sent");
});
