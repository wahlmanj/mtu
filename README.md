# Simple startup script for OS X that sets your MTU below the default specs immediately & @ boot. Installs a plist in /Library/LaunchDaemons and a script in /Library/StartupItems. Default MTU=600 on network adapter en0.

- Paste this one liner in a terminal window to install (Scroll all the way to the right when copying the code):

```
cd ~/Desktop; git clone https://github.com/wahlmanj/mtu.git; cd ~/Desktop/mtu; sudo chmod +x install.sh; sudo ./install.sh
```
