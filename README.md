# manage-multiple-java-versions-debian
Downloading and managing multiplle versions of JDK in Linux (Debian).

This script is for managing multiple JDK versions in a Debian system. It downloads the JDK and sets up the symlinks so that switching between JDK versions is just a command away.

## How to run this script

  1. Clone the git repository to your local workspace. 
  2. Open the terminal and move to the repository in your local workspace.
  3. Open the file *multiple-java-versions.sh*.
  4. Set the value of *JAVA_DOWNLOAD_URL* to a URL that will download the *tar.gz* file of your JDK. The URLs for Open JDK 8, 11 and 17 is available at the top of the script for reference.
  5. Set the version of the JDK that you are downloading in *JAVA_VERSION*. For example 8 if you are downloading JDK 8.
  6. Save and close the file.
  7. Run the script by entering the command *sudo ./manage-java-version.sh*. The script will download the JDK and set up the symlinks.
  8. At the end of the script it will display the list of JDK versions available in your system. You can choose to select the newly downloaded JDK or remain with the    existing one by pressing ENTER.
  9. The script will remove the downloaded JDK and you are good to go.
  
## How to switch between JDK versions
  Run the command *sudo update-alternatives --config java* in your terminal. This will display the list of JDK versions available in your system. Choose the one you want and hit ENTER. Run *java -version* to make sure that the correct JDK has been selected.
  
## Reference
  https://dev.to/thegroo/install-and-manage-multiple-java-versions-on-linux-using-alternatives-5e93
