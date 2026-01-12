# BZZAI Helper

สลับระหว่าง **Zai API** กับ **Anthropic Default** ใน Claude Code พร้อม TUI Menu

## Quick Start (npx)

```bash
# ติดตั้ง Gum ก่อน
brew install gum

# รันครั้งแรก - จะสร้าง config file ให้
npx bzzai-helper

# แก้ API key
nano ~/.zai/env.sh

# ใช้งาน
npx bzzai-helper        # Open TUI menu
npx bzzai-helper on     # Enable Zai
npx bzzai-helper off    # Disable Zai
npx bzzai-helper status # Check status
```

## Manual Install

```bash
# Clone repo
git clone https://github.com/yourusername/bzzai-helper.git ~/bzzai-helper
cd ~/bzzai-helper

# ติดตั้ง Gum
brew install gum

# เพิ่ม bin ลง PATH
echo 'export PATH="$PATH:~/bzzai-helper/bin"' >> ~/.zshrc
source ~/.zshrc

# ใช้งาน
bzzai on
bzzai off
bzzai status
bzzai menu
```

## ตั้งค่า API Key

สร้างไฟล์ `~/.zai/env.sh`:

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

## TUI Menu

```
═════════════════════════════════
      BZZAI Toggle Menu
═════════════════════════════════

⚪ Zai: DISABLED (default Anthropic)

▶ Enable Zai     → Switch to Zai API
  Disable Zai    → Switch back to Anthropic
  Check Status   → Show current status
  Edit Config    → Edit API config (TUI form)
  Exit
```

## License

MIT
