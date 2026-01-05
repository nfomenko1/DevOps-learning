#!/bin/bash
echo "---Linux Check Script---"
echo "1. Текущий путь:"
pwd
echo "2. Содержимое папки с подробностями:"
ls -la
echo "3. Какие процессы работают:"
ps aux | head -5
echo "4. System logs (last 10 lines):"
tail -10 /var/log/syslog
echo "5. Проверка ошибок/событий системы:"
df -h
echo "---Check complete---"
 