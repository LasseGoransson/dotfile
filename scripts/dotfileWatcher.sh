inotifywait -r -q -m -e CLOSE_WRITE --exclude '/\..+' --format="git commit -am 'autocommit on change'" /home/lasg/dotfiles/ | sh
