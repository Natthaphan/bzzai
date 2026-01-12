# BZZAI Helper

สลับระหว่าง **Zai API** กับ **Anthropic Default** ใน Claude Code พร้อม TUI Menu

## Quick Start (npx)

ไม่ต้องติดตั้งอะไรเพิ่ม - รันได้เลย:

```bash
# รันครั้งแรง - จะสร้าง config file ให้
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
git clone https://github.com/Natthaphan/bzzai.git ~/bzzai
cd ~/bzzai

# เพิ่ม bin ลง PATH
echo 'export PATH="$PATH:~/bzzai/bin"' >> ~/.zshrc
source ~/.zshrc

# ใช้งาน
bzzai on
bzzai off
bzzai status
bzzai menu
```

## ตั้งค่า API Key

สร้างไฟล์ `~/.zai/env.sh` (สร้างอัตโนมัติครั้งแรก):

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
    ╔═════════════════════════════════╗
    ║     BZZAI Toggle Menu           ║
    ╚═════════════════════════════════╝

    Status: ○ Zai DISABLED

    ─────────────────────────────────────

    [1] Enable Zai     Switch to Zai API
    [2] Disable Zai    Switch back to Anthropic
    [3] Check Status   Show current status
    [4] Edit Config    Edit API config
    [q] Quit           Exit
```

## License

MIT
