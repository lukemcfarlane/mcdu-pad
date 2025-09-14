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

const allBtns = Array.from(document.querySelectorAll('button'));
allBtns.forEach(btn => {
    btn.addEventListener("click", e => {
        const el = e.target
        const msg = el.dataset.key

        ws.send(msg)
        console.log(`Message sent: ${msg}`)
    })
});
