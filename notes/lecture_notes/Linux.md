  ## Linux 
  
  ### General Commands
  
  | Command        | Use        |
  | ------------- |:-------------:|
  | ./| relative path | 
  | cat|  concatenate /working with files| 
  |ls -l (-R)|  show directory with details (recursively)|
  |cd /| go to root directory |
  |cd |go to to home directory |
  | ~ | represents location of home directory|
  |chmod| change mode (change permissions of file)|
  |chmod 777| add rwx to all users (need to review)|
  |cd .. | go to parent directory|
  |mkdir (-p)| make directory (even if it doesn't exist)|
  |cp file copyto [new name] | copy file|
  |mv| can move or rename a file |
  |rm (-r)| remove (recursively)|
  |less | view larger files without everything at once (q to exit)|
  |echo | repeat text (used to create variables/strings/files)|
  |ls  *txt | find files with text |
  
  ### Text Processing 
  
  | Command        | Use        |
  | ------------- |:-------------:|
  |grep [word] [files] | searches for words in files|
  |wc|gives the number of lines, words, and char in a file|
  |sort [sort field ] [file] | sorting contents of a file -kN on a specific column|
  
  
  ### Other Useful Commands
  
  | Command        | Use        |
  | ------------- |:-------------:|
  |date| get current date and time |
  |ssh|sign into a remote machine|
  |scp | copy a file from or onto a remote machine|
  |wget / curl| download a webpage/endpoint|
  
  
  ### Reading Command Line
  
  #### File Data
  
  (d)rwxr-xr-x 1 root root 4096 Aug  8  2018 usr
  
  ##### First Group
  d on left most is directory
  l is link
  
  plus three groups of RWX (read,write,execute)
  
  r - read 
  w - write 
  x - execute
  
  First is owner
  Second is group
  Third is all users
  
  ##### Other Groups
  
  integer is in kb
  
  
  
  
