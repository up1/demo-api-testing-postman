cd /etc/newman/
newman run demo.json -e test.json -r cli,junit
newman run demo2.json -e test2.json -r cli,junit