# Contributing to INKVASION

First off, **thank you** for considering contributing to INKVASION! 🎮

This is an open-source game project and we welcome contributions from everyone — whether you're a seasoned game developer or making your very first pull request. If you love games and want to learn, build, and collaborate, you're in the right place.

---

## Table of Contents

- [Getting Started](#getting-started)
- [Prerequisites](#prerequisites)
- [Setting Up the Project](#setting-up-the-project)
- [How to Contribute](#how-to-contribute)
  - [Reporting Bugs](#reporting-bugs)
  - [Suggesting Features](#suggesting-features)
  - [Contributing Code](#contributing-code)
  - [Art & Assets](#art--assets)
  - [Documentation](#documentation)
- [Development Workflow](#development-workflow)
- [Project Structure](#project-structure)
- [Coding Guidelines](#coding-guidelines)
- [Commit Message Convention](#commit-message-convention)
- [Pull Request Process](#pull-request-process)
- [Code of Conduct](#code-of-conduct)
- [Need Help?](#need-help)

---

## Getting Started

INKVASION is built with **[Godot Engine 4.6](https://godotengine.org/)** using **GDScript**. It's a 2D territory-control game inspired by Paper.io with battle royale mechanics. The project is in its early stages, so there's a lot of room to make an impact!

---

## Prerequisites

- **Godot Engine 4.6+** — Download from [godotengine.org](https://godotengine.org/download)
- **Git** — For version control
- **Aseprite** (optional) — For editing `.ase` sprite files. Free alternatives like LibreSprite also work.

---

## Setting Up the Project

1. **Fork** the repository on GitHub.

2. **Clone** your fork locally:

   ```bash
   git clone https://github.com/<your-username>/inkvasion.git
   cd inkvasion
   ```

3. **Open the project** in Godot Engine:
   - Launch Godot 4.6+
   - Click **Import** and navigate to the cloned folder
   - Select `project.godot` and open it

4. **Run the project** by pressing `F5` or clicking the Play button.

---

## How to Contribute

There are many ways to contribute, and not all of them involve writing code!

### Reporting Bugs

Found something broken? Please [open an issue](https://github.com/akshatparashar22/inkvasion/issues/new) and include:

- A clear, descriptive title
- Steps to reproduce the bug
- What you expected to happen vs. what actually happened
- Your OS and Godot version
- Screenshots or GIFs if applicable

### Suggesting Features

Have an idea that would make INKVASION better? We'd love to hear it!

- [Open a feature request](https://github.com/akshatparashar22/inkvasion/issues/new) with the **"enhancement"** label
- Describe the feature and why it would be valuable
- Include mockups or references if you have them

### Contributing Code

Whether it's fixing a bug, implementing a new mechanic, or improving performance — code contributions are always welcome.

Areas where help is especially needed:

- **Core mechanics** — Line drawing, loop detection, area capture
- **AI / Bots** — Bot movement and territory logic
- **UI/UX** — Menus, HUD, visual feedback
- **Networking** — Multiplayer support (future scope)
- **Optimization** — Performance improvements for larger maps

### Art & Assets

If you're an artist or designer, you can contribute:

- Character sprites and animations
- Tilemap assets
- UI elements and icons
- Visual effects (particles, shaders)
- Sound effects and music

> **Note:** Please ensure all contributed assets are either original work or properly licensed (CC0, CC-BY, etc.). Do not submit copyrighted material.

### Documentation

Help us improve docs by:

- Fixing typos or unclear explanations
- Writing tutorials or guides
- Documenting game mechanics or systems
- Adding code comments

---

## Development Workflow

1. **Create a branch** from `main` for your work:

   ```bash
   git checkout -b feature/your-feature-name
   ```

   Use prefixes like:
   - `feature/` — New features
   - `fix/` — Bug fixes
   - `art/` — Asset additions or changes
   - `docs/` — Documentation updates

2. **Make your changes** and test them in the Godot editor.

3. **Commit your changes** with clear, descriptive messages (see [Commit Convention](#commit-message-convention)).

4. **Push** to your fork:

   ```bash
   git push origin feature/your-feature-name
   ```

5. **Open a Pull Request** against the `main` branch.

---

## Project Structure

```text
inkvasion/
├── assets/          # Sprites, images, and other art assets
├── docs/            # Design documents and references
├── scenes/          # Godot scene files (.tscn)
│   ├── Main.tscn    # Main game scene
│   └── player.tscn  # Player scene
├── scripts/         # GDScript files (.gd)
│   └── player.gd    # Player movement and logic
├── project.godot    # Godot project configuration
├── LICENSE          # MIT License
├── README.md        # Project overview and design document
└── CONTRIBUTING.md  # This file
```

---

## Coding Guidelines

- **Language:** GDScript (Godot's built-in scripting language)
- **Indentation:** Use tabs (Godot default)
- **Naming conventions:**
  - `snake_case` for variables and functions
  - `PascalCase` for class/node names
  - `UPPER_SNAKE_CASE` for constants
- **Keep scripts focused** — One script per scene/node where possible
- **Comment your code** — Especially complex game logic
- **Use signals** for decoupled communication between nodes
- **Test your changes** — Run the game and verify nothing is broken before submitting

---

## Commit Message Convention

Use clear, descriptive commit messages:

```text
<type>: <short description>

[optional body with more details]
```

**Types:**

| Type       | Description                             |
|------------|-----------------------------------------|
| `feat`     | A new feature                           |
| `fix`      | A bug fix                               |
| `art`      | Asset additions or changes              |
| `docs`     | Documentation changes                   |
| `refactor` | Code restructuring without new features |
| `perf`     | Performance improvements                |
| `chore`    | Build/config/tooling changes            |

**Examples:**

```text
feat: add line drawing system for player trail
fix: resolve collision detection on area capture
art: add idle and walk animations for player
docs: update README with setup instructions
```

---

## Pull Request Process

1. Ensure your code **runs without errors** in Godot 4.6+.
2. Update documentation if your changes affect how the project works.
3. Fill out the PR description explaining **what** you changed and **why**.
4. Link any related issues (e.g., `Closes #12`).
5. Be responsive to feedback — reviewers may request changes.
6. Once approved, your PR will be merged! 🎉

---

## Code of Conduct

We are committed to providing a welcoming and inclusive experience for everyone. Please be respectful and constructive in all interactions.

- **Be kind and respectful** to other contributors
- **Be constructive** with feedback
- **Be patient** with newcomers — everyone starts somewhere
- **No harassment, discrimination, or toxic behavior** of any kind

Violations may result in being banned from the project.

---

## Need Help?

- **Browse existing issues** to see what's being worked on
- **Open a discussion** or issue if you're unsure where to start
- **Check the README** for the game design document and roadmap
- Look for issues labeled **`good first issue`** — these are beginner-friendly tasks

---

Welcome aboard, and happy coding! 🚀
