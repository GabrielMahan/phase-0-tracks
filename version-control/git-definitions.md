# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a tool which allows users to independently collobrate and modify a project while maintaining the integrity of the initial project through a repository which logs and saves changes made by different users at different timeframes. Users can work indpendently on the project before merging their changes into the master. 

* What is a branch and why would you use one?

If a coding project were a choose-your-own-adventure novella, then a branch is a story option created by an editor to add or edit the story. If it's suitable, it's merged into the original. If it doesn't work out, then the branch can be scrapped (or edited) without damaging the integrity of the master. Multiple collaborators, then, can work on their respective branches independently and without risk of harming the master. 

* What is a commit? What makes a good commit message?

A commit command merges a branch with its master, and to keep things tidy and documented it should be accompanied with a message which, ideally, is concise but thoroughly descriptive of the changes made before that merge. A good commit message will allow users to troubleshoot in the cases of errors. 

* What is a merge conflict?

A merge conflict occurs changes are committed that might override existing code in the repository. For example, in my octopus file I committed code that overlapped, and git made me review and resolve the conflict before I could commit the new changes. 