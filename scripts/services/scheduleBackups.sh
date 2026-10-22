inputFolder="~/dotfiles/scripts/services/"
outputFolder="~/.config/systemd/user/"

rm ${outputFolder}{notesBackup.service,notesBackup.timer,systemBackup.service,systemBackup.timer}

cp ${inputFolder}{notesBackup.service,notesBackup.timer,systemBackup.service,systemBackup.timer} $outputFolder


systemctl --user enable notesBackup.timer
systemctl --user enable systemBackup.timer
