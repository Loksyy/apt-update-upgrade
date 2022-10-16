# Tutorial: scheduled automation for this script using cron
1. **Make a custom repository called "scripts" in your HOME directory**
```
cd
mkdir scripts 
```
2. **Copy the update.sh file into the folder and make the script an executable using the command chmod**
```
chomd +x update.sh
```
3. **Open the bashrc file** 
```
nano ~/.bashrc
```
4. **Scroll down to the bottom and add:**
```
PATH="$PATH:$HOME/scripts"
```
*Save the file with CTRL+O and exit using CTRL+X*

5. **Enter the cron command and choose a text editor**
```
crontab -e
```
6. **Scroll down the bottom and set the values that suits you the most**

```
# .---------------- minute (0 - 59)
# |  .------------- hour (0 - 23)
# |  |  .---------- day of month (1 - 31)
# |  |  |  .------- month (1 - 12) OR jan,feb,mar,apr ...
# |  |  |  |  .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat
# |  |  |  |  |
# *  *  *  *  *  any command to be executed
```
**Example of a job scheduled everyday at 8:30 AM**
```
30 08 * * * home/user/scripts/update
```
