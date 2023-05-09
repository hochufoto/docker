import requests

TOKEN = "5260692456:AAGDM2lZkL1i6vMlvO6gxghxb8Yy_zrLfSs"
chat_id = "525314981"

message = "hello from your telegram bot"

url = f"https://api.telegram.org/bot{TOKEN}/sendMessage?chat_id={chat_id}&text={message}"

print(requests.get(url).json()) # this sends the message