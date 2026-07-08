#!/usr/bin/env bash

set -euo pipefail

REPORT_DIR="$HOME/homelab/reports"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
REPORT_FILE="$REPORT_DIR/system_inventory_$TIMESTAMP.txt"

mkdir -p "$REPORT_DIR"

{
echo "======================================================="
echo " Enterprise Infrastructure Lab"
echo " System Inventory Report"
echo "======================================================="
echo
echo "Generated: $(date)"
echo

echo "===== SYSTEM ====="
echo "Hostname: $(hostname)"
echo "Operating System: $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')"
echo "Kernel: $(uname -r)"
echo "Architecture: $(uname -m)"
echo "Uptime:"
uptime -p
echo

echo "===== CPU ====="
lscpu | grep -E "Model name|CPU\(s\)|Thread|Core|Socket"
echo

echo "===== MEMORY ====="
free -h
echo

echo "===== FILESYSTEMS ====="
df -h
echo

echo "===== NETWORK ====="
ip -brief address
echo
echo "Default Gateway:"
ip route | grep default || true
echo
echo "DNS Servers:"
grep nameserver /etc/resolv.conf || true
echo

echo "===== CURRENT USER ====="
whoami
echo

echo "===== USERS ====="
cut -d: -f1 /etc/passwd
echo

echo "===== ACTIVE SERVICES ====="
systemctl --type=service --state=running --no-pager
echo

echo "===== INSTALLED TOOLS ====="

for tool in git docker docker-compose curl wget python3 bash; do
    if command -v "$tool" >/dev/null 2>&1; then
        echo "[OK] $tool -> $(command -v "$tool")"
    else
        echo "[--] $tool not installed"
    fi
done

echo
echo "===== DISK USAGE ====="
du -sh "$HOME" 2>/dev/null || true

echo
echo "======================================================="
echo "End of report"
echo "======================================================="

} > "$REPORT_FILE"

echo
echo "Inventory generated successfully."
echo "Report:"
echo "$REPORT_FILE"
