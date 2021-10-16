https://youness.net/linux/set-random-wallpapers-unsplash-com-ubuntu

Now let’s execute it every 5 minutes using crontab, edit it:

Choose an editor with its number, then add at the end the line:

```bash
crontab -e
*/5 * * * * /home/matt/code/wallpaper/wallpaper.sh
```
