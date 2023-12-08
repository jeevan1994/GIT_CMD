[1mdiff --git a/Git Command.docx b/Git Command.docx[m
[1mnew file mode 100644[m
[1mindex 0000000..fd97c16[m
[1m--- /dev/null[m
[1m+++ b/Git Command.docx[m	
[36m@@ -0,0 +1,25 @@[m
[32m+[m[32m                                  Git Command[m
[32m+[m[32m                                Basics command[m
[32m+[m[32mFor create repository: Git Init[m
[32m+[m[32mAdd file to tracked: Git add <File name> or Git . (for all file)/[m
[32m+[m[32mFor checked File: Git Status[m
[32m+[m[32mReview changes: git status[m
[32m+[m[32mCommit the changes : git commit[m
[32m+[m[32mCheck the commit history: git log[m
[32m+[m[32mRoll back to previous commit: git reset  -  hard[m
[32m+[m[32mPush changes- git push[m
[32m+[m[32mFor check git: git[m
[32m+[m[32mFor git version check: git --version[m
[32m+[m[41m                                       [m
[32m+[m[32m                            Git Initialize Command[m
[32m+[m[32mList of all git configuration: Git config  - l[m[41m [m
[32m+[m[32mFor set user name:  Git config --global user.name " jeevan kumar"[m
[32m+[m[32mFor set user name:  Git config --global user.email " jeevan kumar"[m
[32m+[m[32mFor set color:  Git config -- global color.ui auto[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m
[1mdiff --git a/progit (1).pdf b/progit (1).pdf[m
[1mnew file mode 100644[m
[1mindex 0000000..6319ad1[m
[1m--- /dev/null[m
[1m+++ b/progit (1).pdf[m	
[36m@@ -0,0 +1,20346 @@[m
[32m+[m[32m       Pro Git[m
[32m+[m
[32m+[m[32mScott Chacon, Ben Straub[m
[32m+[m
[32m+[m[32m     Version 2.1.412, 2023-11-16[m
[32m+[m[32mTable of Contents[m
[32m+[m
[32m+[m[32mLicense. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 1[m
[32m+[m[32mPreface by Scott Chacon . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2[m
[32m+[m[32mPreface by Ben Straub . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 3[m
[32m+[m[32mDedications. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 4[m
[32m+[m[32mContributors. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 5[m
[32m+[m[32mIntroduction . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 8[m
[32m+[m[32mGetting Started . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10[m
[32m+[m
[32m+[m[32m   About Version Control. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 10[m
[32m+[m[32m   A Short History of Git . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 14[m
[32m+[m[32m   What is Git? . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 14[m
[32m+[m[32m   The Command Line . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 18[m
[32m+[m[32m   Installing Git . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 18[m
[32m+[m[32m   First-Time Git Setup. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 21[m
[32m+[m[32m   Getting Help. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 24[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 25[m
[32m+[m[32mGit Basics. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 26[m
[32m+[m[32m   Getting a Git Repository . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 26[m
[32m+[m[32m   Recording Changes to the Repository . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 28[m
[32m+[m[32m   Viewing the Commit History . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 40[m
[32m+[m[32m   Undoing Things. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 46[m
[32m+[m[32m   Working with Remotes . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 50[m
[32m+[m[32m   Tagging . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 55[m
[32m+[m[32m   Git Aliases . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 60[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 62[m
[32m+[m[32mGit Branching. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 63[m
[32m+[m[32m   Branches in a Nutshell . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 63[m
[32m+[m[32m   Basic Branching and Merging . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 70[m
[32m+[m[32m   Branch Management . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 79[m
[32m+[m[32m   Branching Workflows . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 82[m
[32m+[m[32m   Remote Branches . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 85[m
[32m+[m[32m   Rebasing . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 95[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 104[m
[32m+[m[32mGit on the Server. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 105[m
[32m+[m[32m   The Protocols . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 105[m
[32m+[m[32m   Getting Git on a Server . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 110[m
[32m+[m[32m   Generating Your SSH Public Key . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 112[m
[32m+[m[32m   Setting Up the Server . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 113[m
[32m+[m[32m   Git Daemon . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 116[m
[32m+[m[32m   Smart HTTP . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 117[m
[32m+[m[32m   GitWeb . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 119[m
[32m+[m[32m   GitLab . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 121[m
[32m+[m[32m   Third Party Hosted Options. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 124[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 125[m
[32m+[m[32mDistributed Git. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 126[m
[32m+[m[32m   Distributed Workflows . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 126[m
[32m+[m[32m   Contributing to a Project . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 129[m
[32m+[m[32m   Maintaining a Project . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 150[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 165[m
[32m+[m[32mGitHub. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 166[m
[32m+[m[32m   Account Setup and Configuration . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 166[m
[32m+[m[32m   Contributing to a Project . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 171[m
[32m+[m[32m   Maintaining a Project . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 191[m
[32m+[m[32m   Managing an organization. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 205[m
[32m+[m[32m   Scripting GitHub . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 208[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 217[m
[32m+[m[32mGit Tools . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 218[m
[32m+[m[32m   Revision Selection . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 218[m
[32m+[m[32m   Interactive Staging. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 226[m
[32m+[m[32m   Stashing and Cleaning . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 230[m
[32m+[m[32m   Signing Your Work. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 236[m
[32m+[m[32m   Searching . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 239[m
[32m+[m[32m   Rewriting History. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 243[m
[32m+[m[32m   Reset Demystified . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 251[m
[32m+[m[32m   Advanced Merging. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 271[m
[32m+[m[32m   Rerere . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 288[m
[32m+[m[32m   Debugging with Git . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 295[m
[32m+[m[32m   Submodules. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 298[m
[32m+[m[32m   Bundling. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 318[m
[32m+[m[32m   Replace . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 322[m
[32m+[m[32m   Credential Storage . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 330[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 335[m
[32m+[m[32mCustomizing Git. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 336[m
[32m+[m[32m   Git Configuration . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 336[m
[32m+[m[32m   Git Attributes. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 346[m
[32m+[m[32m   Git Hooks . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 354[m
[32m+[m[32m   An Example Git-Enforced Policy . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 357[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 366[m
[32m+[m[32mGit and Other Systems . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 367[m
[32m+[m[32m   Git as a Client . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 367[m
[32m+[m[32m   Migrating to Git . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 399[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 413[m
[32m+[m[32mGit Internals. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 414[m
[32m+[m[32m   Plumbing and Porcelain. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 414[m
[32m+[m[32m   Git Objects . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 415[m
[32m+[m[32m   Git References. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 425[m
[32m+[m[32m   Packfiles . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 429[m
[32m+[m[32m   The Refspec . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 432[m
[32m+[m[32m   Transfer Protocols . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 435[m
[32m+[m[32m   Maintenance and Data Recovery . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 440[m
[32m+[m[32m   Environment Variables . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 447[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 452[m
[32m+[m[32mAppendix A: Git in Other Environments. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 453[m
[32m+[m[32m   Graphical Interfaces . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 453[m
[32m+[m[32m   Git in Visual Studio . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 458[m
[32m+[m[32m   Git in Visual Studio Code . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 459[m
[32m+[m[32m   Git in IntelliJ / PyCharm / WebStorm / PhpStorm / RubyMine. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 459[m
[32m+[m[32m   Git in Sublime Text . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 460[m
[32m+[m[32m   Git in Bash . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 460[m
[32m+[m[32m   Git in Zsh . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 461[m
[32m+[m[32m   Git in PowerShell . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 463[m
[32m+[m[32m   Summary . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 465[m
[32m+[m[32mAppendix B: Embedding Git in your Applications . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 466[m
[32m+[m[32m   Command-line Git . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 466[m
[32m+[m[32m   Libgit2. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 466[m
[32m+[m[32m   JGit . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 471[m
[32m+[m[32m   go-git . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 474[m
[32m+[m[32m   Dulwich . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 476[m
[32m+[m[32mAppendix C: Git Commands . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 478[m
[32m+[m[32m   Setup and Config . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 478[m
[32m+[m[32m   Getting and Creating Projects . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 480[m
[32m+[m[32m   Basic Snapshotting. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 481[m
[32m+[m[32m   Branching and Merging . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 483[m
[32m+[m[32m   Sharing and Updating Projects . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 485[m
[32m+[m[32m   Inspection and Comparison . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 487[m
[32m+[m[32m   Debugging . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 488[m
[32m+[m[32m   Patching . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 489[m
[32m+[m[32m   Email . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 489[m
[32m+[m[32m   External Systems . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 491[m
[32m+[m[32m   Administration . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 491[m
[32m+[m[32m   Plumbing Commands . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 492[m
[32m+[m[32mIndex . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 493[m
[32m+[m[32mLicense[m
[32m+[m
[32m+[m[32mThis work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0[m
[32m+[m[32mUnported License. To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-[m
[32m+[m[32msa/3.0 or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.[m
[32m+[m
[32m+[m[32m                                                                                                                                                                     1[m
[32m+[m[32mPreface by Scott Chacon[m
[32m+[m
[32m+[m[32mWelcome to the second edition of Pro Git. The first edition was published over four years ago now.[m
[32m+[m[32mSince then a lot has changed and yet many important things have not. While most of the core[m
[32m+[m[32mcommands and concepts are still valid today as the Git core team is pretty fantastic at keeping[m
[32m+[m[32mthings backward compatible, there have been some significant additions and changes in the[m
[32m+[m[32mcommunity surrounding Git. The second edition of this book is meant to address those changes and[m
[32m+[m[32mupdate the book so it can be more helpful to the new user.[m
[32m+[m
[32m+[m[32mWhen I wrote the first edition, Git was still a relatively difficult to use and barely adopted tool for[m
[32m+[m[32mthe harder core hacker. It was starting to gain steam in certain communities, but had not reached[m
[32m+[m[32manywhere near the ubiquity it has today. Since then, nearly every open source community has[m
[32m+[m[32madopted it. Git has made incredible progress on Windows, in the explosion of graphical user[m
[32m+[m[32minterfaces to it for all platforms, in IDE support and in business use. The Pro Git of four years ago[m
[32m+[m[32mknows about none of that. One of the main aims of this new edition is to touch on all of those new[m
[32m+[m[32mfrontiers in the Git community.[m
[32m+[m
[32m+[m[32mThe Open Source community using Git has also exploded. When I originally sat down to write the[m
[32m+[m[32mbook nearly five years ago (it took me a while to get the first version out), I had just started working[m
[32m+[m[32mat a very little known company developing a Git hosting website called GitHub. At the time of[m
[32m+[m[32mpublishing there were maybe a few thousand people using the site and just four of us working on it.[m
[32m+[m[32mAs I write this introduction, GitHub is announcing our 10 millionth hosted project, with nearly 5[m
[32m+[m[32mmillion registered developer accounts and over 230 employees. Love it or hate it, GitHub has[m
[32m+[m[32mheavily changed large swaths of the Open Source community in a way that was barely conceivable[m
[32m+[m[32mwhen I sat down to write the first edition.[m
[32m+[m
[32m+[m[32mI wrote a small section in the original version of Pro Git about GitHub as an example of hosted Git[m
[32m+[m[32mwhich I was never very comfortable with. I didn’t much like that I was writing what I felt was[m
[32m+[m[32messentially a community resource and also talking about my company in it. While I still don’t love[m
[32m+[m[32mthat conflict of interests, the importance of GitHub in the Git community is unavoidable. Instead of[m
[32m+[m[32man example of Git hosting, I have decided to turn that part of the book into more deeply describing[m
[32m+[m[32mwhat GitHub is and how to effectively use it. If you are going to learn how to use Git then knowing[m
[32m+[m[32mhow to use GitHub will help you take part in a huge community, which is valuable no matter which[m
[32m+[m[32mGit host you decide to use for your own code.[m
[32m+[m
[32m+[m[32mThe other large change in the time since the last publishing has been the development and rise of[m
[32m+[m[32mthe HTTP protocol for Git network transactions. Most of the examples in the book have been[m
[32m+[m[32mchanged to HTTP from SSH because it’s so much simpler.[m
[32m+[m
[32m+[m[32mIt’s been amazing to watch Git grow over the past few years from a relatively obscure version[m
[32m+[m[32mcontrol system to basically dominating commercial and open source version control. I’m happy that[m
[32m+[m[32mPro Git has done so well and has also been able to be one of the few technical books on the market[m
[32m+[m[32mthat is both quite successful and fully open source.[m
[32m+[m
[32m+[m[32mI hope you enjoy this updated edition of Pro Git.[m
[32m+[m
[32m+[m[32m2[m
[32m+[m[32mPreface by Ben Straub[m
[32m+[m
[32m+[m[32mThe first edition of this book is what got me hooked on Git. This was my introduction to a style of[m
[32m+[m[32mmaking software that felt more natural than anything I had seen before. I had been a developer for[m
[32m+[m[32mseveral years by then, but this was the right turn that sent me down a much more interesting path[m
[32m+[m[32mthan the one I was on.[m
[32m+[m[32mNow, years later, I’m a contributor to a major Git implementation, I’ve worked for the largest Git[m
[32m+[m[32mhosting company, and I’ve traveled the world teaching people about Git. When Scott asked if I’d be[m
[32m+[m[32minterested in working on the second edition, I didn’t even have to think.[m
[32m+[m[32mIt’s been a great pleasure and privilege to work on this book. I hope it helps you as much as it did[m
[32m+[m[32mme.[m
[32m+[m
[32m+[m[32m                                                                                                                                                                     3[m
[32m+[m[32mDedications[m
[32m+[m
[32m+[m[32mTo my wife, Becky, without whom this adventure never would have begun. — Ben[m
[32m+[m[32mThis edition is dedicated to my girls. To my wife Jessica who has supported me for all of these years[m
[32m+[m[32mand to my daughter Josephine, who will support me when I’m too old to know what’s going on. —[m
[32m+[m[32mScott[m
[32m+[m
[32m+[m[32m4[m
[32m+[m[32mContributors[m
[32m+[m
[32m+[m[32mSince this is an Open Source book, we have gotten several errata and content changes donated over[m
[32m+[m[32mthe years. Here are all the people who have contributed to the English version of Pro Git as an open[m
[32m+[m[32msource project. Thank you everyone for helping make this a better book for everyone.[m
[32m+[m
[32m+[m[32mContributors as of d83275a1:[m
[32m+[m
[32m+[m[32m4wk-                          Jon Forrest                   Sean Head[m
[32m+[m[32mAdam Laflamme                 Jon Freed                     Sean Jacobs[m
[32m+[m[32mAdrien Ollier                 Jonathan                      Sebastian Krause[m
[32m+[m[32mAkrom K                       Jordan Hayashi                Sergey Kuznetsov[m
[32m+[m[32mAlan D. Salewski              Joris Valette                 Severino Lorilla Jr[m
[32m+[m[32mAlba Mendez                   Josh Byster                   Shengbin Meng[m
[32m+[m[32mAleh Suprunovich              Joshua Webb                   Sherry Hietala[m
[32m+[m[32mAlex Povel                    Junjie Yuan                   Shi Yan[m
[32m+[m[32mAlexander Bezzubov            Junyeong Yim                  Siarhei Bobryk[m
[32m+[m[32mAlexandre Garnier             Justin Clift                  Siarhei Krukau[m
[32m+[m[32mAlfred Myers                  Jörn Auerbach                 Skyper[m
[32m+[m[32mAmanda Dillon                 Kaartic Sivaraam              Smaug123[m
[32m+[m[32mAndreas Bjørnestad            KatDwo                        Snehal Shekatkar[m
[32m+[m[32mAndrei Dascalu                Katrin Leinweber              Solt Budavári[m
[32m+[m[32mAndrei Korshikov              Kausar Mehmood                Song Li[m
[32m+[m[32mAndrew Layman                 Keith Hill                    Stephan van Maris[m
[32m+[m[32mAndrew MacFie                 Kenneth Kin Lum               Steven Roddis[m
[32m+[m[32mAndrew Metcalf                Kenneth Lum                   Stuart P. Bentley[m
[32m+[m[32mAndrew Murphy                 Klaus Frank                   SudarsanGP[m
[32m+[m[32mAndyGee                       Kristijan "Fremen" Velkovski  Suhaib Mujahid[m
[32m+[m[32mAnneTheAgile                  Krzysztof Szumny              Susan Stevens[m
[32m+[m[32mAnthony Loiseau               Kyrylo Yatsenko               Sven Selberg[m
[32m+[m[32mAnton Trunov                  Lars Vogel                    Thanix[m
[32m+[m[32mAntonello Piemonte            Laxman                        Thomas Ackermann[m
[32m+[m[32mAntonino Ingargiola           Lazar95                       Thomas Hartmann[m
[32m+[m[32mArdavast Dayleryan            Leonard Laszlo                Tiffany[m
[32m+[m[32mArtem Leshchev                Linus Heckemann               Tom Schady[m
[32m+[m[32mAtul Varma                    Logan Hasson                  Tomas Fiers[m
[32m+[m[32mBagas Sanjaya                 Louise Corrigan               Tomoki Aonuma[m
[32m+[m[32mBen Sima                      Luc Morin                     Tvirus[m
[32m+[m[32mBenjamin Dopplinger           Lukas Röllin                  Tyler Cipriani[m
[32m+[m[32mBilly Griffin                 Marat Radchenko               Ud Yzr[m
[32m+[m[32mBob Kline                     Marcin Sędłak-Jakubowski      UgmaDevelopment[m
[32m+[m[32mBohdan Pylypenko              Marie-Helene Burle            Vadim Markovtsev[m
[32m+[m[32mBorek Bernard                 Marius Žilėnas                Vangelis Katsikaros[m
[32m+[m[32mBrett Cannon                  Markus KARG                   Vegar Vikan[m
[32m+[m[32mBuzut                         Marti Bolivar                 Victor Ma[m
[32m+[m[32mC Nguyen                      Mashrur Mia (Sa'ad)           Vipul Kumar[m
[32m+[m[32mCadel Watson                  Masood Fallahpoor             Vitaly Kuznetsov[m
[32m+[m[32mCarlos Martín Nieto           Mathieu Dubreuilh             Volker Weißmann[m
[32m+[m[32mCarlos Tafur                  Matt Cooper                   Volker-Weissmann[m
[32m+[m
[32m+[m[32m                                                                                 5[m
[32m+[m[32m  Chaitanya Gurrapu         Matt Trzcinski        Wesley Gonçalves[m
[32m+[m[32m  Changwoo Park             Matthew Miner         William Gathoye[m
[32m+[m[32m  Christian Decker          Matthieu Moy          William Turrell[m
[32m+[m[32m  Christoph Bachhuber       Mavaddat Javid        Wlodek Bzyl[m
[32m+[m[32m  Christoph Prokop          Max Coplan            Xavier Bonaventura[m
[32m+[m[32m  Christopher Wilson        Michael MacAskill     Y. E[m
[32m+[m[32m  CodingSpiderFox           Michael Sheaver       Yann Soubeyrand[m
[32m+[m[32m  Cory Donnelly             Michael Welch         Your Name[m
[32m+[m[32m  Cullen Rhodes             Michiel van der Wulp  Yue Lin Ho[m
[32m+[m[32m  Cyril                     Miguel Bernabeu       Yunhai Luo[m
[32m+[m[32m  Damien Tournoud           Mike Charles          Yusuke SATO[m
[32m+[m[32m  Dan Schmidt               Mike Pennisi          ajax333221[m
[32m+[m[32m  Daniel Hollas             Mike Thibodeau        alex-koziell[m
[32m+[m[32m  Daniel Knittl-Frank       Mikhail Menshikov     allen joslin[m
[32m+[m[32m  Daniel Shahaf             Mitsuru Kariya        andreas[m
[32m+[m[32m  Daniel Sturm              Máximo Cuadros        applecuckoo[m
[32m+[m[32m  Daniele Tricoli           Niels Widger          atalakam[m
[32m+[m[32m  Daniil Larionov           Niko Stotz            axmbo[m
[32m+[m[32m  Danny Lin                 Nils Reuße            bripmccann[m
[32m+[m[32m  David Rogers              Noelle Leigh          brotherben[m
[32m+[m[32m  Davide Angelocola         OliverSieweke         delta4d[m
[32m+[m[32m  Denis Savitskiy           Olleg Samoylov        devwebcl[m
[32m+[m[32m  Dexter                    Osman Khwaja          dualsky[m
[32m+[m[32m  Dexter Morganov           Otto Kekäläinen       evanderiel[m
[32m+[m[32m  DiamondeX                 Owen                  eyherabh[m
[32m+[m[32m  Dieter Ziller             Pablo Schläpfer       flip111[m
[32m+[m[32m  Dino Karic                Pascal Berger         flyingzumwalt[m
[32m+[m[32m  Dmitri Tikhonov           Pascal Borreli        franjozen[m
[32m+[m[32m  Dmitriy Smirnov           Patrice Krakow        goekboet[m
[32m+[m[32m  Doug Richardson           Patrick Steinhardt    grgbnc[m
[32m+[m[32m  Duncan Dean               Pavel Janík           haripetrov[m
[32m+[m[32m  Dustin Frank              Paweł Krupiński       i-give-up[m
[32m+[m[32m  Ed Flanagan               Pessimist             iprok[m
[32m+[m[32m  Eden Hochbaum             Peter Kokot           jingsam[m
[32m+[m[32m  Eduard Bardají Puig       Petr Bodnar           jliljekrantz[m
[32m+[m[32m  Eric Henziger             Petr Janeček          johnhar[m
[32m+[m[32m  Explorare                 Petr Kajzar           leerg[m
[32m+[m[32m  Ezra Buehler              Phil Mitchell         maks[m
[32m+[m[32m  Fabien-jrt                Philippe Blain        mmikeww[m
[32m+[m[32m  Fady Nagh                 Philippe Miossec      mosdalsvsocld[m
[32m+[m[32m  Felix Nehrke              Pratik Nadagouda      nicktime[m
[32m+[m[32m  Filip Kucharczyk          Rafi                  noureddin[m
[32m+[m[32m  Fornost461                Raphael R             patrick96[m
[32m+[m[32m  Frank                     Ray Chen              paveljanik[m
[32m+[m[32m  Frederico Mazzone         Rex Kerr              pedrorijo91[m
[32m+[m[32m  Frej Drejhammar           Reza Ahmadi           peterwwillis[m
[32m+[m[32m  Guthrie McAfee Armstrong  Richard Hoyle         petsuter[m
[32m+[m[32m  HairyFotr                 Ricky Senft           rahrah[m
[32m+[m[32m  Hamidreza Mahdavipanah    Rintze M. Zelle       rmzelle[m
[32m+[m[32m  Haruo Nakayama            Rob Blanco            root[m
[32m+[m[32m  Helmut K. C. Tessarek     Robert P. Goldman     sanders@oreilly.com[m
[32m+[m
[32m+[m[32m6[m
[32m+[m[32mHidde de Vries       Robert P. J. Day    sharpiro[m
[32m+[m[32mHonkingGoose         Robert Theis        slavos1[m
[32m+[m[32mHoward               Rohan D'Souza       spacewander[m
[32m+[m[32mIgnacy               Roman Kosenko       td2014[m
[32m+[m[32mIgor                 Ronald Wampler      twekberg[m
[32m+[m[32mIlker Cat            Rory                uerdogan[m
[32m+[m[32mJan Groenewald       Rüdiger Herrmann    ugultopu[m
[32m+[m[32mJaswinder Singh      SATO Yusuke         un1versal[m
[32m+[m[32mJean-Noël Avila      Sam Ford            xJom[m
[32m+[m[32mJeroen Oortwijn      Sam Joseph          xtreak[m
[32m+[m[32mJim Hill             Sanders Kleinfeld   yakirwin[m
[32m+[m[32mJoel Davies          Sarah Schneider     zwPapEr[m
[32m+[m[32mJohannes Dewender    Saurav Sachidanand  ᐯᕮᒪᗝᑕᕮᒣ[m
[32m+[m[32mJohannes Schindelin  Scott Bronson       狄卢[m
[32m+[m[32mJohn Lin             Scott Jones[m
[32m+[m
[32m+[m[32m                                                      7[m
[32m+[m[32mIntroduction[m
[32m+[m
[32m+[m[32mYou’re about to spend several hours of your life reading about Git. Let’s take a minute to explain[m
[32m+[m[32mwhat we have in store for you. Here is a quick summary of the ten chapters and three appendices of[m
[32m+[m[32mthis book.[m
[32m+[m
[32m+[m[32mIn Chapter 1, we’re going to cover Version Control Systems (VCSs) and Git basics — no technical[m
[32m+[m[32mstuff, just what Git is, why it came about in a land full of VCSs, what sets it apart, and why so many[m
[32m+[m[32mpeople are using it. Then, we’ll explain how to download Git and set it up for the first time if you[m
[32m+[m[32mdon’t already have it on your system.[m
[32m+[m
[32m+[m[32mIn Chapter 2, we will go over basic Git usage — how to use Git in the 80% of cases you’ll encounter[m
[32m+[m[32mmost often. After reading this chapter, you should be able to clone a repository, see what has[m
[32m+[m[32mhappened in the history of the project, modify files, and contribute changes. If the book[m
[32m+[m[32mspontaneously combusts at this point, you should already be pretty useful wielding Git in the time it[m
[32m+[m[32mtakes you to go pick up another copy.[m
[32m+[m
[32m+[m[32mChapter 3 is about the branching model in Git, often described as Git’s killer feature. Here you’ll[m
[32m+[m[32mlearn what truly sets Git apart from the pack. When you’re done, you may feel the need to spend a[m
[32m+[m[32mquiet moment pondering how you lived before Git branching was part of your life.[m
[32m+[m
[32m+[m[32mChapter 4 will cover Git on the server. This chapter is for those of you who want to set up Git inside[m
[32m+[m[32myour organization or on your own personal server for collaboration. We will also explore various[m
[32m+[m[32mhosted options if you prefer to let someone else handle that for you.[m
[32m+[m
[32m+[m[32mChapter 5 will go over in full detail various distributed workflows and how to accomplish them[m
[32m+[m[32mwith Git. When you are done with this chapter, you should be able to work expertly with multiple[m
[32m+[m[32mremote repositories, use Git over email and deftly juggle numerous remote branches and[m
[32m+[m[32mcontributed patches.[m
[32m+[m
[32m+[m[32mChapter 6 covers the GitHub hosting service and tooling in depth. We cover signing up for and[m
[32m+[m[32mmanaging an account, creating and using Git repositories, common workflows to contribute to[m
[32m+[m[32mprojects and to accept contributions to yours, GitHub’s programmatic interface and lots of little tips[m
[32m+[m[32mto make your life easier in general.[m
[32m+[m
[32m+[m[32mChapter 7 is about advanced Git commands. Here you will learn about topics like mastering the[m
[32m+[m[32mscary 'reset' command, using binary search to identify bugs, editing history, revision selection in[m
[32m+[m[32mdetail, and a lot more. This chapter will round out your knowledge of Git so that you are truly a[m
[32m+[m[32mmaster.[m
[32m+[m
[32m+[m[32mChapter 8 is about configuring your custom Git environment. This includes setting up hook scripts[m
[32m+[m[32mto enforce or encourage customized policies and using environment configuration settings so you[m
[32m+[m[32mcan work the way you want to. We will also cover building your own set of scripts to enforce a[m
[32m+[m[32mcustom committing policy.[m
[32m+[m
[32m+[m[32mChapter 9 deals with Git and other VCSs. This includes using Git in a Subversion (SVN) world and[m
[32m+[m[32mconverting projects from other VCSs to Git. A lot of organizations still use SVN and are not about to[m
[32m+[m[32mchange, but by this point you’ll have learned the incredible power of Git — and this chapter shows[m
[32m+[m[32myou how to cope if you still have to use a SVN server. We also cover how to import projects from[m
[32m+[m
[32m+[m[32m8[m
[32m+[m[32mseveral different systems in case you do convince everyone to make the plunge.[m
[32m+[m[32mChapter 10 delves into the murky yet beautiful depths of Git internals. Now that you know all[m
[32m+[m[32mabout Git and can wield it with power and grace, you can move on to discuss how Git stores its[m
[32m+[m[32mobjects, what the object model is, details of packfiles, server protocols, and more. Throughout the[m
[32m+[m[32mbook, we will refer to sections of this chapter in case you feel like diving deep at that point; but if[m
[32m+[m[32myou are like us and want to dive into the technical details, you may want to read Chapter 10 first.[m
[32m+[m[32mWe leave that up to you.[m
[32m+[m[32mIn Appendix A, we look at a number of examples of using Git in various specific environments. We[m
[32m+[m[32mcover a number of different GUIs and IDE programming environments that you may want to use[m
[32m+[m[32mGit in and what is available for you. If you’re interested in an overview of using Git in your shell,[m
[32m+[m[32myour IDE, or your text editor, take a look here.[m
[32m+[m[32mIn Appendix B, we explore scripting and extending Git through tools like libgit2 and JGit. If you’re[m
[32m+[m[32minterested in writing complex and fast custom tools and need low-level Git access, this is where you[m
[32m+[m[32mcan see what that landscape looks like.[m
[32m+[m[32mFinally, in Appendix C, we go through all the major Git commands one at a time and review where[m
[32m+[m[32min the book we covered them and what we did with them. If you want to know where in the book[m
[32m+[m[32mwe used any specific Git command you can look that up here.[m
[32m+[m[32mLet’s get started.[m
[32m+[m
[32m+[m[32m                                                                                                                                                                     9[m
[32m+[m[32mGetting Started[m
[32m+[m
[32m+[m[32mThis chapter will be about getting started with Git. We will begin by explaining some background[m
[32m+[m[32mon version control tools, then move on to how to get Git running on your system and finally how to[m
[32m+[m[32mget it set up to start working with. At the end of this chapter you should understand why Git is[m
[32m+[m[32maround, why you should use it and you should be all set up to do so.[m
[32m+[m
[32m+[m[32mAbout Version Control[m
[32m+[m
[32m+[m[32mWhat is “version control”, and why should you care? Version control is a system that records[m
[32m+[m[32mchanges to a file or set of files over time so that you can recall specific versions later. For the[m
[32m+[m[32mexamples in this book, you will use software source code as the files being version controlled,[m
[32m+[m[32mthough in reality you can do this with nearly any type of file on a computer.[m
[32m+[m[32mIf you are a graphic or web designer and want to keep every version of an image or layout (which[m
[32m+[m[32myou would most certainly want to), a Version Control System (VCS) is a very wise thing to use. It[m
[32m+[m[32mallows you to revert selected files back to a previous state, revert the entire project back to a[m
[32m+[m[32mprevious state, compare changes over time, see who last modified something that might be causing[m
[32m+[m[32ma problem, who introduced an issue and when, and more. Using a VCS also generally means that if[m
[32m+[m[32myou screw things up or lose files, you can easily recover. In addition, you get all this for very little[m
[32m+[m[32moverhead.[m
[32m+[m
[32m+[m[32mLocal Version Control Systems[m
[32m+[m
[32m+[m[32mMany people’s version-control method of choice is to copy files into another directory (perhaps a[m
[32m+[m[32mtime-stamped directory, if they’re clever). This approach is very common because it is so simple, but[m
[32m+[m[32mit is also incredibly error prone. It is easy to forget which directory you’re in and accidentally write[m
[32m+[m[32mto the wrong file or copy over files you don’t mean to.[m
[32m+[m[32mTo deal with this issue, programmers long ago developed local VCSs that had a simple database that[m
[32m+[m[32mkept all the changes to files under revision control.[m
[32m+[m
[32m+[m[32m10[m
[32m+[m[32mFigure 1. Local version control diagram[m
[32m+[m[32mOne of the most popular VCS tools was a system called RCS, which is still distributed with many[m
[32m+[m[32mcomputers today. RCS works by keeping patch sets (that is, the differences between files) in a special[m
[32m+[m[32mformat on disk; it can then re-create what any file looked like at any point in time by adding up all[m
[32m+[m[32mthe patches.[m
[32m+[m
[32m+[m[32mCentralized Version Control Systems[m
[32m+[m
[32m+[m[32mThe next major issue that people encounter is that they need to collaborate with developers on[m
[32m+[m[32mother systems. To deal with this problem, Centralized Version Control Systems (CVCSs) were[m
[32m+[m[32mdeveloped. These systems (such as CVS, Subversion, and Perforce) have a single server that contains[m
[32m+[m[32mall the versioned files, and a number of clients that check out files from that central place. For many[m
[32m+[m[32myears, this has been the standard for version control.[m
[32m+[m
[32m+[m[32m                                                                                                                                                                    11[m
[32m+[m[32mFigure 2. Centralized version control diagram[m
[32m+[m[32mThis setup offers many advantages, especially over local VCSs. For example, everyone knows to a[m
[32m+[m[32mcertain degree what everyone else on the project is doing. Administrators have fine-grained control[m
[32m+[m[32mover who can do what, and it’s far easier to administer a CVCS than it is to deal with local databases[m
[32m+[m[32mon every client.[m
[32m+[m[32mHowever, this setup also has some serious downsides. The most obvious is the single point of failure[m
[32m+[m[32mthat the centralized server represents. If that server goes down for an hour, then during that hour[m
[32m+[m[32mnobody can collaborate at all or save versioned changes to anything they’re working on. If the hard[m
[32m+[m[32mdisk the central database is on becomes corrupted, and proper backups haven’t been kept, you lose[m
[32m+[m[32mabsolutely everything — the entire history of the project except whatever single snapshots people[m
[32m+[m[32mhappen to have on their local machines. Local VCSs suffer from this same problem — whenever you[m
[32m+[m[32mhave the entire history of the project in a single place, you risk losing everything.[m
[32m+[m
[32m+[m[32mDistributed Version Control Systems[m
[32m+[m
[32m+[m[32mThis is where Distributed Version Control Systems (DVCSs) step in. In a DVCS (such as Git, Mercurial[m
[32m+[m[32mor Darcs), clients don’t just check out the latest snapshot of the files; rather, they fully mirror the[m
[32m+[m[32mrepository, including its full history. Thus, if any server dies, and these systems were collaborating[m
[32m+[m[32mvia that server, any of the client repositories can be copied back up to the server to restore it. Every[m
[32m+[m[32mclone is really a full backup of all the data.[m
[32m+[m
[32m+[m[32m12[m
[32m+[m[32mFigure 3. Distributed version control diagram[m
[32m+[m[32mFurthermore, many of these systems deal pretty well with having several remote repositories they[m
[32m+[m[32mcan work with, so you can collaborate with different groups of people in different ways[m
[32m+[m[32msimultaneously within the same project. This allows you to set up several types of workflows that[m
[32m+[m[32maren’t possible in centralized systems, such as hierarchical models.[m
[32m+[m
[32m+[m[32m                                                                                                                                                                    13[m
[32m+[m[32mA Short History of Git[m
[32m+[m
[32m+[m[32mAs with many great things in life, Git began with a bit of creative destruction and fiery controversy.[m
[32m+[m
[32m+[m[32mThe Linux kernel is an open source software project of fairly large scope. During the early years of[m
[32m+[m[32mthe Linux kernel maintenance (1991–2002), changes to the software were passed around as patches[m
[32m+[m[32mand archived files. In 2002, the Linux kernel project began using a proprietary DVCS called[m
[32m+[m[32mBitKeeper.[m
[32m+[m
[32m+[m[32mIn 2005, the relationship between the community that developed the Linux kernel and the[m
[32m+[m[32mcommercial company that developed BitKeeper broke down, and the tool’s free-of-charge status[m
[32m+[m[32mwas revoked. This prompted the Linux development community (and in particular Linus Torvalds,[m
[32m+[m[32mthe creator of Linux) to develop their own tool based on some of the lessons they learned while[m
[32m+[m[32musing BitKeeper. Some of the goals of the new system were as follows:[m
[32m+[m
[32m+[m[32m  • Speed[m
[32m+[m[32m  • Simple design[m
[32m+[m[32m  • Strong support for non-linear development (thousands of parallel branches)[m
[32m+[m[32m  • Fully distributed[m
[32m+[m[32m  • Able to handle large projects like the Linux kernel efficiently (speed and data size)[m
[32m+[m
[32m+[m[32mSince its birth in 2005, Git has evolved and matured to be easy to use and yet retain these initial[m
[32m+[m[32mqualities. It’s amazingly fast, it’s very efficient with large projects, and it has an incredible[m
[32m+[m[32mbranching system for non-linear development (see Git Branching).[m
[32m+[m
[32m+[m[32mWhat is Git?[m
[32m+[m
[32m+[m[32mSo, what is Git in a nutshell? This is an important section to absorb, because if you understand what[m
[32m+[m[32mGit is and the fundamentals of how it works, then using Git effectively will probably be much easier[m
[32m+[m[32mfor you. As you learn Git, try to clear your mind of the things you may know about other VCSs, such[m
[32m+[m[32mas CVS, Subversion or Perforce — doing so will help you avoid subtle confusion when using the tool.[m
[32m+[m[32mEven though Git’s user interface is fairly similar to these other VCSs, Git stores and thinks about[m
[32m+[m[32minformation in a very different way, and understanding these differences will help you avoid[m
[32m+[m[32mbecoming confused while using it.[m
[32m+[m
[32m+[m[32mSnapshots, Not Differences[m
[32m+[m
[32m+[m[32mThe major difference between Git and any other VCS (Subversion and friends included) is the way[m
[32m+[m[32mGit thinks about its data. Conceptually, most other systems store information as a list of file-based[m
[32m+[m[32mchanges. These other systems (CVS, Subversion, Perforce, and so on) think of the information they[m
[32m+[m[32mstore as a set of files and the changes made to each file over time (this is commonly described as[m
[32m+[m[32mdelta-based version control).[m
[32m+[m
[32m+[m[32m14[m
[32m+[m[32mFigure 4. Storing data as changes to a base version of each file[m
[32m+[m[32mGit doesn’t think of or store its data this way. Instead, Git thinks of its data more like a series of[m
[32m+[m[32msnapshots of a miniature filesystem. With Git, every time you commit, or save the state of your[m
[32m+[m[32mproject, Git basically takes a picture of what all your files look like at that moment and stores a[m
[32m+[m[32mreference to that snapshot. To be efficient, if files have not changed, Git doesn’t store the file again,[m
[32m+[m[32mjust a link to the previous identical file it has already stored. Git thinks about its data more like a[m
[32m+[m[32mstream of snapshots.[m
[32m+[m
[32m+[m[32mFigure 5. Storing data as snapshots of the project over time[m
[32m+[m[32mThis is an important distinction between Git and nearly all other VCSs. It makes Git reconsider[m
[32m+[m[32malmost every aspect of version control that most other systems copied from the previous[m
[32m+[m[32mgeneration. This makes Git more like a mini filesystem with some incredibly powerful tools built on[m
[32m+[m[32mtop of it, rather than simply a VCS. We’ll explore some of the benefits you gain by thinking of your[m
[32m+[m[32mdata this way when we cover Git branching in Git Branching.[m
[32m+[m
[32m+[m[32mNearly Every Operation Is Local[m
[32m+[m
[32m+[m[32mMost operations in Git need only local files and resources to operate — generally no information is[m
[32m+[m[32mneeded from another computer on your network. If you’re used to a CVCS where most operations[m
[32m+[m[32mhave that network latency overhead, this aspect of Git will make you think that the gods of speed[m
[32m+[m[32mhave blessed Git with unworldly powers. Because you have the entire history of the project right[m
[32m+[m[32mthere on your local disk, most operations seem almost instantaneous.[m
[32m+[m
[32m+[m[32m                                                                                                                                                                    15[m
[32m+[m[32mFor example, to browse the history of the project, Git doesn’t need to go out to the server to get the[m
[32m+[m[32mhistory and display it for you — it simply reads it directly from your local database. This means you[m
[32m+[m[32msee the project history almost instantly. If you want to see the changes introduced between the[m
[32m+[m[32mcurrent version of a file and the file a month ago, Git can