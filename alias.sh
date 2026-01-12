# Add this to your ~/.zshrc or ~/.bashrc:
# export ZAI_DIR="$HOME/DataStore/me/claude/zai"
# source "$ZAI_DIR/alias.sh"

# Zai toggle function (uses $ZAI_DIR from shell)
zai() {
  local toggle_script="${ZAI_DIR:-$HOME/DataStore/me/claude/zai}/toggle.sh"

  # Log helper (not local, but scoped inside function)
  _zai_alias_log() { [[ "$ZAI_DEBUG" == "1" ]] && echo "[$(date +%H:%M:%S.%3N)] $1"; }

  _zai_alias_log "zai: Starting with arg '$1'"

  if [[ ! -f "$toggle_script" ]]; then
    echo "Error: Zai script not found at $toggle_script"
    echo "Set ZAI_DIR in your shell config"
    return 1
  fi

  case "$1" in
    on)
      _zai_alias_log "zai: Sourcing toggle script..."
      source "$toggle_script"
      _zai_alias_log "zai: Calling zai-on..."
      zai-on
      _zai_alias_log "zai: Complete"
      ;;
    off)
      _zai_alias_log "zai: Sourcing toggle script..."
      source "$toggle_script"
      _zai_alias_log "zai: Calling zai-off..."
      zai-off
      _zai_alias_log "zai: Complete"
      ;;
    status)
      source "$toggle_script"
      zai-status
      ;;
    edit)
      source "$toggle_script"
      zai-edit
      ;;
    menu)
      "$ZAI_DIR/menu.sh"
      ;;
    *)
      echo "Usage: zai on|off|status|edit|menu"
      echo "  on     - Enable Zai API"
      echo "  off    - Disable Zai (use Anthropic default)"
      echo "  status - Show current status"
      echo "  edit   - Edit config file"
      echo "  menu   - Open TUI menu (requires gum)"
      ;;
  esac
}
