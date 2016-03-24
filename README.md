# how to install YUMYUM on centos

## call init.sh as root
it will add the user to the wheel group and install ansible
`. init.sh <username>`
  - `usermod -a -G wheel <username>`
  - `yum install epel-release.noarch`
  - `yum install ansible`

### hint
  - In centos 6 the wheel group is not activad so use: `visudo` and uncomment the %wheel role
  - You have to re-login the user
## fill in your data in
  - group_vars/all
    - git.yml

## trigger install
  - <pre><code>ansible-playbook -i inventory.ini site.yml --ask-sudo-pass</code></pre>
  - <pre><code>ansible-playbook -i inventory.ini site.yml --tags "bashrc" --ask-sudo-pass</code></pre>

# commands

description of some commands

## ls

|comand| actual command  | description |
|---|---|---|
| ls | ls --color=auto | colorized ls |
| ll | ls -l | long listing format |
| la | ls -A | almost-all do not list implied . and .. |
| l. | ls -d .* --color=auto | show only hidden files |



## cd

|comand| actual command  | description |
|---|---|---|
| cd.. | cd .. | allow common typo |
| .. | cd .. | one level up |
| .2 | cd ../.. | two levels up |
| .3  | cd ../../.. | 3 levels up |
| ... | cd ../../.. | 3 levels up |
| .4   | cd ../../../.. | 4 levels up |
| .... | cd ../../../.. | 4 levels up |
| .5   | cd ../../../../.. | 5 levels up |
| .6   | cd ../../../../../.. | 6 levels up |
| .r   | cd /root | got to root |
| .h   | cd /home | got to home |
| .d   | cd /home/$user/Desktop | got to Desktop of current user |
| .s   | cd /home/$user/Schreibtisch | got to Schreibtisch of current user (german is so cool ;-)) |

## iptables
|comand| actual command  | description |
|---|---|---|
| ipt | sudo iptables | shortcut for iptables |
| iptlist | sudo iptables -L -n -v --line-numbers | show ports with Numeric output, verbose and line numbers to the beginning of each rule  |
| iptlistin | sudo iptables -L INPUT -n -v --line-numbers | INPUT |
| iptlistout | sudo iptables -L OUTPUT -n -v --line-numbers | OUTPUT |
| iptlistfw | sudo iptables -L FORWARD -n -v --line-numbers | FORWARD |
| firewall | iptlist | other alias for iptlist |

## rests
|comand| actual command  | description |
|---|---|---|
| tailf | tail -f -n50 | tail with output appended data as the file grows and the last 50 lines |
| c | clear | shortcut for clear |
| ping | ping -c 3 | pings only 3 times |
| pingg | ping -c 1 www.google.com | one ping against google |

## epages
|comand| actual command  | description |
|---|---|---|
| tailerror | tail -f -n50 $EPAGES_LOG/error.log | tail epages error log |
| caterror | cat $EPAGES_LOG/error.log | cat epages error log |
| deleteerror | rm -f $EPAGES_LOG/error.log | delete epages error log |
| taildebug | tail -f -n50 $EPAGES_LOG/debug.log | tail epages debug log |
| catdebug | cat $EPAGES_LOG/debug.log | cat epages debug log |
| deletedebug | rm -f $EPAGES_LOG/debug.log | delete epages debug log |
| tailcommunication | tail -f -n50 $EPAGES_LOG/communication.log | tail epages communication log |
| catcommunication | cat $EPAGES_LOG/communication.log | cat epages communication log |
| deletecommunication | rm -f $EPAGES_LOG/communication.log | delete epages communication log |
| deletelogs | rm -rf $EPAGES_LOG/* | deletes all logs |
| restartep6 | service epages6 start | start/restart epages |
| stopepj | service epagesj stop | stop epages j |

