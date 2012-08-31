# Generating .global_gitignore from .gitignore files

`update_gig.sh` contains list of .gitignore files from
[github](https://github.com/github/gitignore).

Follow these steps:
```
$ chmod 744 update_gig.sh
$ ./update_gig.sh
```

To copy and apply `.gitignore` globally, uncomment the last few lines of 
`update_gig.sh`

```
#echo "copying .global_gitignore to ~/.global_gitignore"
#cp .global_gitignore  ~/.global_gitignore
#git config --global core.excludesfile ~/.global_ignore
```