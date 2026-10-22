newLine="2fa = $(oathtool --totp -b $(cat $HOME/.encryptionKeys/proton2faCode)) "
oldLine="$(cat $HOME"/.config/rclone/rclone.conf" | grep -i "2fa" -m 1)"

sed -i -e "s/$oldLine/$newLine/g" $HOME/.config/rclone/rclone.conf
echo "done"
