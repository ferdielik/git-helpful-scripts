#!/bin/bash

# TODO
# old_author_mail="old_email@sahibinden.com";
# new_author_mail="new_email@gmail.com"

echo "note: for now you need the change emails and username in script."
 
 git filter-branch --commit-filter 'if [ "$GIT_AUTHOR_EMAIL" = "old_email@sahibinden.com" ];                                                                                                                                          
        then
                GIT_AUTHOR_NAME="New User";  
                GIT_AUTHOR_EMAIL="new_email@gmail.com";
                git commit-tree "$@";
        else
                git commit-tree "$@";
        fi' HEAD

 git update-ref -d refs/original/refs/heads/master
 git push -f origin master