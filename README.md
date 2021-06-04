# kologit

The project goal is to reduce burden of typing git commands in terminal.
Git is very powerful tool, but popular command series would be cool to
shrink to a few ASM like statements.

There are lot of GUI wrappers for Git, but I keen to terminal interface. 

## Typical pain points

### Long list of branches
Stock git command `git branch` prints all branches.
In a regular enterprise project it's gonna be hundreds of them and
you never know when it is a good time to remove some old branches.

LRU cache for branches being active helps be less destructive
in the chase to make a list of branches more comprehensible.

**gbr** (**g**it **b**ranch **r**ecents) prints current branch first 
and then recently used branches. 

```
$ gbr
bb
1) cc
2) b
3) master
4) b
```

Branch numbers could be used as shortcuts in *gbc*. 

### Quick checkout by number
**gbc** (**g**it **b**ranch **c**heckout) checks out branch by branch number 
or accepts regular syntax for checkout command, but it also updates *gbr* list.

```
$ gbn  # Git Branch Now - prints active branch name
bb
$ gbc master 
Switched to branch 'master'
$ gbr
master
1) bb
2) cc
3) b
4) master
5) b
```

### Checkout previous branch
I was missing Bash analog for `cd -`. LRU for recently active branches helps here too.
**gbp** (**g**it **b**ranch **p**revious)

```
$ gbp
Switched to branch 'bb'
$ gbr
bb
1) master
2) cc
3) b
4) master
5) b
```
