echo $(wpctl get-volume 40 | rg "[\d\.]+" -o | sed "s/\.//")

