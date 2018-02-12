# how to install YUMYUM on centos
## bash setup
  <pre><code>ansible-playbook -i inventory.ini local.yml --ask-sudo-pass</code></pre>
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
   - <pre> --tags "common,bashrc" </pre>
   - <pre> --skip-tags "git" </pre>

| possible tags |
|---|
| common |
| bashrc |
| git |
| ssh |
| IpTables |
| epages |
| epagesinstall |
| epagesreinstall |
| eclipse |
| grafics |
| java |
| mysqlserver |
| mysqlsetup |
| sonarqube |


# commands

description of some commands

## ls

|command| actual command  | description |
|---|---|---|
| ls | ls --color=auto | colorized ls |
| ll | ls -l | long listing format |
| la | ls -A | almost-all do not list implied . and .. |
| l. | ls -d .* --color=auto | show only hidden files |



## cd

|command| actual command  | description |
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

## iptables
|command| actual command  | description |
|---|---|---|
| ipt | sudo iptables | shortcut for iptables |
| iptlist | sudo iptables -L -n -v --line-numbers | show ports with Numeric output, verbose and line numbers to the beginning of each rule  |
| iptlistin | sudo iptables -L INPUT -n -v --line-numbers | INPUT |
| iptlistout | sudo iptables -L OUTPUT -n -v --line-numbers | OUTPUT |
| iptlistfw | sudo iptables -L FORWARD -n -v --line-numbers | FORWARD |
| firewall | iptlist | other alias for iptlist |

## rests
|command| actual command  | description |
|---|---|---|
| tailf | tail -f -n50 | tail with output appended data as the file grows and the last 50 lines |
| c | clear | shortcut for clear |
| ping | ping -c 3 | pings only 3 times |
| pingg | ping -c 1 www.google.com | one ping against google (face it, this is what you ping most of the time!)|

## git
|command| actual command  | description |
|---|---|---|
| gstatus | git status | git status |
| gcommit | git add -A && git commit | add all files and commit |
| grebase | git pull --rebase --prune | git pull with rebase |
| gnewbranch | git checkout -b | create new branch |
| gswitchbranch | git checkout | switch branch 
| greset | git reset HEAD --hard | reset hard to HEAD |
| gltree | git log --graph --oneline --decorate --all | list commits as tree |
| glfiles | git log --graph --oneline --decorate --all --name-status | list commit with changed file names |
| gl | git log --oneline | list commits in oneline mode |
| gpush | git push | git push |

## epages

### logs
|command| actual command  | description |
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

### services
|command| actual command  | description |
|---|---|---|
| ep6start | service epages6 start | start epages6 |
| ep6restart | service epages6 start_service | restart epages6 application server |
| ep6stop | service epages6 stop | stop epages6 |
| epjstatus | service epagesj status | status of epagesj |
| epjstart | service epagesj start | start epagesj |
| epjrestart | service epagesj restart | restart epagesj |
| epjstop | service epagesj stop | stop epagesj |

### rests
|command| actual command  | description |
|---|---|---|
| cdcartridges | cd $EPAGES_CARTRIDGES/DE_EPAGES | goto DE_EPAGES folder |
