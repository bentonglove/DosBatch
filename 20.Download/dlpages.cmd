@echo off
curl "https://viewer.ebookservice.tw/api/img?p=10&f=jpg&bookId=5dfc6dbb-06f7-4daa-80da-8f8343de4dec&token=5d5ab4c7d4f63042690d2609cc0953e0156319e57a73ca45b58d5b7c60af29f3&bookToken=null" ^
  -H "authority: viewer.ebookservice.tw" ^
  -H "accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9" ^
  -H "accept-language: zh-TW,zh;q=0.9,en-US;q=0.8,en;q=0.7" ^
  -H "cache-control: no-cache, no-store" ^
  -H "cookie: _ga=GA1.2.913002295.1649435370; connect.sid=s^%^3Amgib-5WuEy2o3nZCWO1PwOkTF2RAp1fa.kmSprXIu9^%^2BBfzwGnDJw^%^2FAumrbzV9PI4FofWbdLmhdwk; 5dfc6dbb-06f7-4daa-80da-8f8343de4dec_page=3" ^
  -H "pragma: no-cache" ^
  -H "sec-fetch-dest: document" ^
  -H "sec-fetch-mode: navigate" ^
  -H "sec-fetch-site: none" ^
  -H "sec-fetch-user: ?1" ^
  -H "sec-gpc: 1" ^
  -H "upgrade-insecure-requests: 1" ^
  -H "user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.67 Safari/537.36" ^
  -b cookiec.txt