pwd  prints the absolute path name of the current working directory
ls Display the contents list of your current directory
cd changes the working directory to the user’s home directory
ls -l Display current directory contents in a long format
ls -al shows directory content including hidden files in long format
ls -lna displays current directory content in long format with user and group IDs displayed numerically and hidden files
mkdir /tmp/my_first_directory  creates a directory named my_first_directory in the /tmp/ directory
mv /tmp/betty /tmp/my_first_directory  Moves the file betty from /tmp/ to /tmp/my_first_directory
rm /tmp/my_first_directory/betty  deletes the file betty
rm -r /tmp/my_first_directory  removes directory my_first_directory from directory /tmp/
cd -  changes the working dirctory to the previous one
ls -al . .. /boot  lists all files including hidden files in the current dirctory and the parent directory and the /boot directory in long format

file /tmp/iamfile  prints the type of the file named iamafile in the dirctory /tmp
ln -s /bin/ls __ls__  Create a symbolic link to /bin/ls, named __ls__ in the current working directory  
