#### Using *Galène*'s internal TURN server
Galène comes with a built-in TURN server that should work out-of-the-box.
- If your server is behind NAT, allow incoming traffic to TCP/UDP port `1194` (or whatever is configured with the `-turn` option in `/etc/systemd/system/galene.service`)