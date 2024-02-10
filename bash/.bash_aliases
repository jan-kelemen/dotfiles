alias opera="opera --start-maximized"
alias irc="tmux attach -t weechat"
alias checkirc="cat ~/.weechat/logs/irc.libera.#fer2.weechatlog | grep -e 'jadzia_dax\|boxxy\|tyrannizer\|Shoe0nHead' | tac | more"
alias dirsync="rsync -Pvrt --ignore-existing" #source target
alias gp2dr='mkdir transcoded; for i in *.MP4; do ffmpeg -i "$i" -vcodec mjpeg -q:v 2 -acodec pcm_s16be -q:a 0 -f mov "transcoded/${i%.*}.mov"; done'
alias dr2yt="ffmpeg -i DR.mov -vf yadif,format=yuv420p -force_key_frames expr:gte\(t\,n_forced/2\) -c:v libx264 -preset slow -crf 23 -b:v 30M -maxrate 30M -bufsize 60M -bf 2 -c:a aac -q:a 1 -ac 2 out.mp4"
