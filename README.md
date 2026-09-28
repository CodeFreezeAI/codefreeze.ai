# codefreeze.ai

The website for **ANIE (Artificial Neural Intelligence Engine)** by CodeFreeze.ai. ANIE is an open-source macOS AI chat client built for Swift developers.

ANIE source and releases: https://github.com/superbox64/anie

## What the site covers

- **Swift coding help**: SwiftUI / UIKit / AppKit guidance, protocol-oriented patterns, refactoring and performance tuning, Swift 5 & 6 concurrency (async/await, tasks).
- **Profiles**: a separate profile for each LLM provider. Switch models and settings on the fly.
- **Conversation control**: edit earlier messages, rewind a conversation, export chat history.
- **Getting ANIE**: GitHub Releases, or build it from source with Xcode or `xcodebuild`.
- A rotating AgentiLoop.ai promo banner (`promo-banner.js`) and a "Sponsored by xcf.ai" footer.

## Layout

```
index.html            landing page
promo-banner.js       rotating promo banner (shown below the top menu)
ANIE_icon_1024.png    app icon
anie_ui.png           app screenshot
hover.txt             hover text snippet
create_dmg.sh         builds downloads/ANIE_1.0preview4.dmg from downloads/ using hdiutil
downloads/
  ANIE.app                     prebuilt app bundle
  ANIE_1.0preview4.dmg         disk image
  ANIE_1.0preview4.src.zip     source snapshot
```

`index.html.bak` is an older copy of the landing page.

## Build the DMG

```sh
./create_dmg.sh
```

## Local preview

```sh
python3 -m http.server 8000
# open http://localhost:8000
```

## History

- **May 2025**: first site for ANIE 1.0.4 / 1.0 preview 4.
- **Jun 2025**: added chat links.
- **Aug 2026**: removed the dead chat links (chat.xcf.ai / chat.webauthn.ai).
- **Sep 2026**: replaced the old banners with the AgentiLoop rotating banner.
