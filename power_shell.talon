os: windows
and app.exe: pwsh.exe

lisa:
	insert("ls")
	key("enter")
katie up:
	insert("cd ..")
	key("enter")
katie [<user.text>]:
	insert("cd ")
	insert(user.text)
run last:
	key("up")
	key("enter")

git pull:
	insert("git pull")
	key("enter")
git push:
	insert("git push")
	key("enter")
git status:
	insert("git status")
	key("enter")
git switch master:
	insert("git switch master")
	key("enter")
git checkout:
	insert("git checkout -b tdadah/REPAY-")
git rebase master:
	insert("git rebase master")
	key("enter")
git stash:
	insert("git stash")
	key(enter)
git stash pop:
	insert("git stash pop")
	key(enter)
git cherry pick: insert("git cherry-pick ")

strip guid:
	insert("stripguid")
	key(enter)
