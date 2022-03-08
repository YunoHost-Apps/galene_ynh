Galène is a videoconference server (an “SFU”) that is easy to deploy and that requires moderate server resources. It was originally designed for lectures and conferences (where a single speaker streams audio and video to hundreds or thousands of users), but later evolved to be useful for student practicals (where users are divided into many small groups), and meetings (where a dozen users interact with each other).

## Features

### Client features:

- multiparty audio and video
- text chat
- reasonably good support for mobile (Android and iPhone/iPad)
- screen and window sharing, including sharing multiple windows simultaneously (not on mobile)
- streaming video and audio from disk
- activity detection

### Server features

- redistribution of arbitrary numbers of audio and video streams;
- text chat;
- recording to disk;
- user statuses ("raise hand", etc.);
- choice of audio and video codecs (full functionality for VP8, VP9, and H.264, preliminary support for AV1);
- Simulcast;
- Scalable Video Coding (SVC) for VP8 and VP9;
- automatic restarting of failed flows (on ICE failure);
- congestion control in the server → client direction (both loss-based and using REMB indications);
- congestion control in the client → server direction (loss-based, partial REMB support);
- dynamic tuning of buffer sizes depending on the clients' RTT;
- built-in TURN server.
