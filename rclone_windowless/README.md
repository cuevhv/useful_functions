# Install RClone

You can install and mount your google drive in linux using this tutorial: [link](https://ostechnix.com/mount-google-drive-using-rclone-in-linux/)

To mount it ``nohub'' you can use the bash command in this folder.

# Initialize it at the beginning of the session:

To execute a shell script on startup only once, you can use a simple approach by adding an entry to the Ubuntu startup applications. This method will ensure that the script runs automatically only when your user session starts, but it won't repeat on subsequent logins. Here's how you can do it:

1. Place your shell script in a suitable location, preferably in your user's home directory. For example, you can create a folder called `startup-scripts` and place your script inside it:

   ```bash
   mkdir ~/startup-scripts
   mv /path/to/your_script.sh ~/startup-scripts/
   ```

2. Open the Startup Applications Preferences window. You can do this by searching for "Startup Applications" in the Ubuntu Dash or by pressing `Alt + F2` and entering `gnome-session-properties`.

3. Click on the "Add" button or the "+" icon to create a new startup application.

4. In the "Name" field, give your startup script a descriptive name.

5. In the "Command" field, provide the full path to your shell script. For example:

   ```
   /home/your_username/startup-scripts/your_script.sh
   ```

   Replace `your_username` with your actual username.

6. Add a brief description of your script in the "Comment" field (optional).

7. Click "Add" to add the startup application.

8. Make sure to check that the newly added startup application is enabled (a tick mark should appear beside it).

9. Close the Startup Applications Preferences window.

Now, your shell script will be executed automatically when your user session starts. The script will run only once during the first login after you've added it to the startup applications. On subsequent logins, it won't run again.

Please note that this method works for individual user sessions. If you want the script to run once for the entire system (all users), you might need to use a different approach, such as adding the script to the system-wide startup locations or using other system-specific mechanisms.
