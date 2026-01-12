# BZZAI Helper

Switch between **Zai API** and **Anthropic Default** in Claude Code with TUI Menu

---

## Quick Start (npx)

No installation required - run directly:

```bash
# First run - creates config file automatically
npx bzzai-helper

# Edit API key
nano ~/.zai/env.sh

# Usage
npx bzzai-helper        # Open TUI menu
npx bzzai-helper on     # Enable Zai
npx bzzai-helper off    # Disable Zai
npx bzzai-helper status # Check status
```

---

## Manual Install

```bash
# Clone repo
git clone https://github.com/Natthaphan/bzzai.git ~/bzzai
cd ~/bzzai

# Add to PATH
echo 'export PATH="$PATH:~/bzzai/bin"' >> ~/.zshrc
source ~/.zshrc

# Usage
bzzai on
bzzai off
bzzai status
bzzai menu
```

---

## API Key Configuration

Create `~/.zai/env.sh` (auto-created on first run):

```bash
mkdir -p ~/.zai
nano ~/.zai/env.sh
```

```bash
ZAI_AUTH_TOKEN="your-api-key-here"
ZAI_BASE_URL="https://api.z.ai/api/anthropic"
ZAI_TIMEOUT_MS="3000000"
ZAI_DEBUG="0"
```

---

## Important: Avoid Signature Errors ⚠️

When switching **from Zai back to Anthropic**, you may encounter:

```
Invalid signature in thinking block
```

**Solution:** Run `/compact` in Claude Code before switching.

```bash
# Before running: bzzai off
/compact
```

| Switch Path | Need /compact? |
|------------|----------------|
| Anthropic → Zai (`bzzai on`) | No |
| Zai → Anthropic (`bzzai off`) | **Yes** |

---

## TUI Menu

```
    ╔═════════════════════════════════╗
    ║     BZZAI Toggle Menu           ║
    ╚═════════════════════════════════╝

    Status: [OFF] Zai DISABLED

    ─────────────────────────────────────

    > Enable Zai     Switch to Zai API
      Disable Zai    Switch back to Anthropic
      Check Status   Show current status
      Edit Config    Edit API config
      Quit           Exit

    ↑↓ Navigate  Enter Select  q Quit
```

---

## License

MIT
