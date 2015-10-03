# 1.5 Tracking Changes Reflection
**How does tracking and adding changes make developers' lives easier?**
Using a VCS to track and add changes enables developers to easily track progress of a project. If a problem should arise, a developer will be able to go through the log, pinpoint what went wrong, see who created the error, and easily excise the faulty material.

**What is a commit?**
A commit is a brief explanation of changes made to a file.

**What are the best practices for commit messages?**
Commit messages should be written in the imperative, have a brief summation in 50 words or less, and attempt to most accurately convey all changes made.

**What does the HEAD^ argument mean?**
HEAD is the commit that you're currently working on. HEAD^ can be used to refer to the previous commit.
git reset --soft HEAD^ can be used to revert to the previous commit if the user decides they'd like to change it.

**What are the 3 stages of a git change and how do you move a file from one stage to anther?**
The 3 stages of a git change are 'modified', 'staged', and 'committed'. When working on a file it's being modified. By 'staging' it, you're setting it up to be saved in its current state. Once committed, the files that have been staged are permanently saved to your directory.

**Write a handy cheatsheet of the commands you need to commit you changes.**
git status
git add FILE-NAME
git commit -m "COMMIT-MESSAGE"

**What is a pull request and how do you create and merge one?**
A pull request is used to upload and merge your local changes to the remote master branch. After pushing changes to a remote branch, navigate to that branch on GitHub, and click the 'pull request' button. After making sure the 'base' is the correct master branch, click 'create pull request.' To merge that, click on the pull request, click the button 'merge pull request', and confirm. Once merged, delete the branch that was merged.

**Why are pull requests preferred when working with teams?**
Pull requests easily identify who made changes, what changes were made, and why.