import sys
import os
import requests

# https://unsplash.com/documentation
search = sys.argv[1]
access_key = os.environ["UNSPLASH_ACCESS_KEY"]

params = {"client_id": access_key, "w": 1920, "h": 1080, "query": search}
url = f"https://api.unsplash.com/photos/random"
resp = requests.get(url, params)
resp.raise_for_status()
print(resp.json()["urls"]["regular"])
