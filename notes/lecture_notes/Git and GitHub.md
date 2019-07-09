  ## Git and GitHub
  
  ### What is Git
  Git is a distributed version control system (DVCS)
  
  Centralized version control system, every client fully mirrors the repo and has a full storage backup of all the data
  
  If the server dies, the client repos can be copied to the server to restore it
   
   Benefits:
    * Performance
    * Security 
    * Flexibility
  
  Git has three sections
  
  * Working Directory
    * Like writing your doc
  * Staging Area (Index)
    * When you save your doc -  you can save as many times are you want (same as git add)
  * Final Repo
    * Ready to publish your doc/submit - git commit 
  
  #### Git Status vs Git Log
  
  * Git status is good for the current commit
  * Git log is the history of your commits
  
  #### Terms
  * Head
    * the most recent commit 
  * Detached Head State
    * You moved the head of the repo to a previous commit
    * Snapshot of what the repo looked like
    * you can go back to where you were
  * Git RM
    * Removes files completely from repo
  
  | Command        | Use        |
  | ------------- |:-------------:|
  |git --version| gets the current version installed|
  |git config --list --global| global information on login saved to .gitconfig in home directory|
  |git init|creates a new repo (do it only in the folder you want to create a repo)|
  |git clone|downloads an existing repo from github|
  |git commit (-m)| committing (with a message to avoid vim)|
  |git commit (-am)|adds and commits all changes in repo (not new)|
  |git diff|show changes in previous commit vs current|
  |git log (--oneline)|shows entire log of commits |
  |git checkout .hashid. | go to that location|
  |git checkout master|goes back to original head |
  |git revert |takes a specified commit and creates a new commit which inverses the specified commit|
  |git reset|Discard commits in a private branch or throw away uncommited changes|
  |git checkout . |undoes changes to all files |
  |git rm (--cached)| remove file (removes from gir repo) / when a file it too big|
  |git remote -v|shows URL for remote repo|
  
