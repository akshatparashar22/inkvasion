# INKVASION (Working Title)

> An open-source competitive 2D territory-control game built with [Godot Engine 4.6](https://godotengine.org/)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Godot Engine](https://img.shields.io/badge/Godot-4.6-blue?logo=godot-engine&logoColor=white)](https://godotengine.org/)
[![Contributions Welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg)](CONTRIBUTING.md)

## Overview

INKVASION is a competitive 2D territory-control game inspired by Paper.io with battle royale mechanics. Players expand their territory by drawing lines and enclosing areas while competing against others in a shrinking map. The objective is to dominate territory and eliminate opponents.

This is an **open-source project** — we welcome contributions from everyone, whether you're a game developer, artist, designer, or just getting started. See our [Contributing Guide](CONTRIBUTING.md) to jump in!

---

## Quick Start

### Prerequisites

- [Godot Engine 4.6+](https://godotengine.org/download)
- Git

### Setup

```bash
git clone https://github.com/akshatparashar22/inkvasion.git
cd inkvasion
```

1. Open Godot Engine
2. Click **Import** → select `project.godot`
3. Press **F5** to run

---

## Core Concept

- Each player starts with a small spawn zone.
- Players move freely and draw lines to capture new territory.
- Closing a loop converts enclosed space into owned territory.
- Territory is dynamic and constantly contested.
- The playable area shrinks over time, forcing confrontation.

---

## Core Mechanics

### 1. Movement

- Player moves in 2D space.
- Movement should feel smooth and responsive.
- Direction-based movement (keyboard or joystick).

### 2. Line Drawing

- When a player leaves their territory, a line is drawn behind them.
- The line represents a vulnerable state.
- Returning to owned territory completes a loop.

### 3. Area Capture

- Completing a loop fills the enclosed area with the player’s color.
- Captured area becomes part of the player’s territory.
- Enemy territory can be captured.

### 4. Territory System

Each player has:

- `current_area`: tiles currently owned
- `max_area_ever`: highest area ever reached (peak)

### 5. Elimination Rules

#### A. Area-Based Elimination

A player is eliminated if:

```text
current_area < 0.5 * max_area_ever
```

#### B. Line Cut Elimination

- If another player touches your active line, you are eliminated instantly.

### 6. Shrinking Zone

- The map gradually shrinks over time.
- Any territory outside the safe zone is removed.
- Players who lose too much territory due to the zone can be eliminated.

---

## Game Loop

1. Spawn in a small territory
2. Move outward and draw a line
3. Close loop to capture area
4. Expand territory or invade opponents
5. Avoid getting your line cut
6. Survive shrinking zone
7. Eliminate others
8. Last player alive wins

---

## Prototype Scope (MVP)

### Version 1: Core Mechanics (Single Player)

- Player movement
- Line drawing system
- Loop detection
- Area capture logic
- Self-collision (optional)

### Version 2: AI Simulation

- Add 3–5 bots
- Basic movement and random expansion
- Basic territory capture
- Line cut detection

### Version 3: Battle Royale Elements

- Shrinking zone
- Area tracking (current and peak)
- Elimination conditions
- Basic UI (area percentage, alive players)

---

## Technical Considerations

### Territory Representation

Options:

- Grid-based (recommended for prototype)
- Polygon-based (more complex, better visuals later)

### Area Calculation

- Count tiles owned per player
- Update on every capture event
- Store peak value for elimination logic

### Performance

- Keep grid resolution low initially
- Optimize updates only on area changes
- Avoid recalculating entire map every frame

---

## Design Goals

- Fast-paced matches
- High-risk, high-reward gameplay
- Clear visual feedback for territory
- Simple to learn, hard to master

---

## Future Scope

- Multiplayer support
- Duo and squad modes
- Power-ups or abilities
- Skins and customization
- Ranked system

---

## Key Risks

- Overly chaotic gameplay with many players
- Poor movement feel
- Unclear visual feedback for territory ownership
- Performance issues with large maps

---

## Development Priority

1. Make movement feel good
2. Make area capture satisfying
3. Ensure rules are clear and consistent
4. Only then expand features

---

## Guiding Principle

Focus on making the act of capturing and stealing territory under pressure feel satisfying. If that is not fun, no additional feature will fix the game.

---

## Contributing

We'd love your help! INKVASION is an open-source project and we welcome contributors of all skill levels and backgrounds.

- 🐛 **Report bugs** — Found something broken? Open an issue
- 💡 **Suggest features** — Got an idea? Let us know
- 🎮 **Write code** — Mechanics, AI, UI, networking, and more
- 🎨 **Create art** — Sprites, animations, VFX, UI design
- 📝 **Improve docs** — Tutorials, guides, and code comments

Check out the **[Contributing Guide](CONTRIBUTING.md)** to get started.

Look for issues labeled `good first issue` if you're new!

---

## License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.
