## nslookup, ping, curl — базовые сетевые команды

Работают везде: Windows CMD, Linux terminal, PowerShell.

> 1. nslookup (DNS резолв — домен → IP)

**Что делает:** Спрашивает DNS-сервер "какой IP у google.com?"  
**Синтаксис:** `nslookup [домен] [dns-сервер]`

> Пример:
nslookup google.com

Вывод:
Server:  8.8.8.8
Address: 8.8.8.8
Name:    google.com
Address: 142.250.190.78  ← IP готов!

> 2. ping (проверка доступности — IP живой?)

**Что делает:** Отправляет ICMP-пакеты на IP, ждёт ответ (TCP/UDP не трогает).  
**Синтаксис:** `ping [IP/домен] [-c 4]`

> Пример:
ping google.com -c 4  # Linux/Mac (4 пакета)
ping -n 4 google.com  # Windows

 Вывод:
- 64 bytes from 142.250.190.78: icmp_seq=1 ttl=117 time=15ms  ← OK!
- ---google.com ping statistics —
- 4 packets transmitted, 4 received, 0% packet loss  ← 100% успех

**DevOps:** "Сервер падает? ping 192.168.1.1"  
**Ошибки:** `Request timeout` = нет сети/firewall.

> 3. curl (HTTP-запрос — API/веб живой?)

**Что делает:** GET-запрос по HTTP/HTTPS, показывает ответ сервера.  
**Синтаксис:** `curl -v [URL]`

Пример:
curl https://httpbin.org/ip  # Мой IP
{"origin":"85.249.XXX.XXX"}

curl -I google.com  # Только headers (HEAD)
curl ya.ru -H "User-Agent: DevOps"  # С заголовком

**DevOps суперсила:** Тестируй API без Postman!  
`curl -X POST -d '{"key":"value"}' https://httpbin.org/post`
