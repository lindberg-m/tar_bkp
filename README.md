# TAR bkp

Scripts and unit files to make automated backups.

## Install

 1. Clone repo
 2. Set variables in `backup_envir.txt`, specifying the folders to backup
and the target destination for those backups, as well as the path where the
shell-scripts resides
 3. Optionally rename the .service and .timer files (`backup_thesis@.service` 
and `backup_thesis@.timer` for example) and put them somwhere suitable. On 
Linux this might be `/home/username/.config/systemd/user`
 4. Activate, and optionally enable, the timers (for example: `systemctl start
--user backup_bkpname@hourly.timer`, or `systemctl --user enable --now
backup_bkpname@hourly.timer`)
