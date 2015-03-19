# TFS2GitMigrator
This project allows to import TFS Projects to Bitbucket repository, anyway, it is easy to use github too.
#### Requirements:
- [git-tf](http://www.microsoft.com/en-us/download/details.aspx?id=30474)
- [git bash for windows](http://git-scm.com/downloads) (or another bash)
##### Steps:

* Edit file 'executor.sh', changing 
 `./downProjectTfs.sh {ProjectName} {ServerAddress}/{Collection}` to your params, for example:
 `./downProjectTfs.sh AmazingProject http://server-tfs2010:8080/tfs/AmazingCollection`
(and add new projects to download as many as you want to).

* Edit file 'upRepositoryGit.sh', changing the values of `{user-bitbucket}`, `{password-bitbucket}` and `{team-bitbucket}` to your own.
 
* Save files and execute `./executor.sh` in your bash.
Before download all your projects, execute `./upRepositoryGit.sh` to create a repository and push your code.
