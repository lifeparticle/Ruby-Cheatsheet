# Contributing

1. Fork the repo
2. Clone your fork
3. Create a branch
```
git branch issue-2 # use issue_number, replace issue-2 with appropriate branch name 
git checkout issue-2
```
4. Push your changes to your fork with git push
```
git add .
git commit -m"Write a meaningfull commit message"
git push
```
5. Create a pull request
  5.1 Use the url from the terminal
  
      ```
      remote: Create a pull request for 'issue-2' on GitHub by visiting:
      remote:      https://github.com/........................
      ```
   5.2 If are haveing problem finding the url
   a) https://github.com/lifeparticle/Ruby-Cheatsheet/pulls
   
   b) Click the button 'New pull request'
   
   c) Click the link 'compare acorss forks'
   
   d) Change head repository to your fork
   
   e) Change the branch to your branch
   
   f) Create pull request
6. ```
   git checkout master
   git pull
   ```
   and repeat
   
# Sync
1. ```git remote add upstream git@github.com:lifeparticle/Ruby-Cheatsheet.git```
2. ```git fetch upstream```
3. ```git branch --set-upstream-to=upstream/master master```
4. ```git pull```
