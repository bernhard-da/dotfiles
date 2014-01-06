#!/usr/bin/env Rscript

new <- system()

NEW=$(zenity --text="Enter new name:" --entry --title="Rename workspace $OLD")
echo "move to workspace \"$NEW\""
i3-msg "move to workspace \"$NEW\"; workspace \"$NEW\";"
