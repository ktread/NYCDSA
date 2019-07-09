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


| Command        | Use        |
| ------------- |:-------------:|
|git --version| gets the current version installed|
|git config --list --global| global information on login saved to .gitconfig in home directory|
|git init|creates a new repo (do it only in the folder you want to create a repo)|
|git clone|downloads an existing repo from github|
|git commit (-m)| committing (with a message to avoid vim)|
|git commit (-am)|adds and commits all changes in repo (not new)|
