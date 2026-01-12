# Zai Toggle Script - ChangeLog

## 2025-01-12 - Initial Setup

### What was done

1. **Created toggle script system** at `~/.config/zai/` (later moved to `~/DataStore/me/claude/zai/`)
   - `toggle.sh` - Main script with zai-on, zai-off, zai-status, zai-edit functions
   - `env.sh` - Template file for Zai API configuration
   - `alias.sh` - Shell aliases and functions

2. **Modified `~/.zshrc`**
   - Added: `source ~/.config/zai/alias.sh`
   - Location: Line 212-213

3. **Modified `~/.claude/settings.json`**
   - Removed hardcoded API keys (security improvement)
   - Added `CLAUDE_ENV_FILE` pointing to `~/.claude/session-env.sh`
   - Added `SessionStart` hook to load zai config on startup

4. **Created helper files**
   - `~/.claude/session-env.sh` - Runtime env file (auto-generated)

### Migration

- Scripts moved from `~/.config/zai/` → `~/DataStore/me/claude/zai/`
- Update `.zshrc` to point to new location

---

## Security Note

**IMPORTANT:** Old API key was exposed during setup. Please:
1. Revoke the old key: `466d4bdb57a34347b71dee82a9926dec.qZFykNNRTNTddU8q`
2. Generate a new key from Zai dashboard
3. Update `ZAI_AUTH_TOKEN` in `env.sh`
