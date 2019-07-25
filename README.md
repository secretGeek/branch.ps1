# branch.ps1
branch.ps1 -- powershell helper for quicker branching in git


## How to make it available...

add [this function](branch.ps1) to your powershell profile (`profile.ps1`)

(or dot source the file from your profile, ". .\branch.ps1")


## How to use

    > b

Will list all of the branches of your current repo, with a number next to each one, and the current branch clearly highlighted.

If master has a "3" next to it, then you can switch to `master` with:

    > b 3


## LESS KEYSTROKES

Cognitive ease. Fluidity. Flow. Git some!