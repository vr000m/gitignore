# Generating .global_gitignore from .gitignore files

`generate_gig.sh` contains list of .gitignore files from
[github](https://github.com/github/gitignore).

Follow these steps:
```
$ chmod 744 generate_gig.sh
$ ./generate_gig.sh
```

To copy and apply `.gitignore` globally, uncomment the last few lines of 
`generate_gig.sh`

```
#echo "copying .global_gitignore to ~/.global_gitignore"
#cp .global_gitignore  ~/.global_gitignore
#git config --global core.excludesfile ~/.global_ignore
```

# Updating .gitignore from individual .gitignore files

`update_ig.sh` downloads files from
[Application-specific](https://github.com/github/gitignore) or from 
[Global](https://github.com/github/gitignore/tree/master/Global) 
.gitignore files.

Follow these steps:
```
$ chmod 744 update_ig.sh
$ ./update_ig.sh Node
$ ./update_ig.sh Global/OSX
```