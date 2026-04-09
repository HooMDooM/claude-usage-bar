#!/bin/bash

APP_NAME="Claude Usage"

echo "Uninstalling Claude Usage..."

pkill -f ClaudeUsageBar 2>/dev/null || true

# Remove Login Item
osascript -e "
    tell application \"System Events\"
        if exists login item \"$APP_NAME\" then
            delete login item \"$APP_NAME\"
        end if
    end tell
" 2>/dev/null || true

rm -rf "$HOME/Applications/$APP_NAME.app"
rm -f "$HOME/.claude/usage-bar.json"
rm -rf "$HOME/.claude-usage-scanner"
rm -f "$HOME/.claude/usage.db"

echo ""
echo "  ✓ App removed"
echo "  ✓ Login Item removed"
echo "  ✓ Scanner removed"
echo "  ✓ Config removed"
echo ""
echo "  Claude Usage has been fully uninstalled."
echo ""
