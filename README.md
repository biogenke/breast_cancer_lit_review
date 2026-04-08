# Breast Cancer literature review
This repository aims to contain all scripts, codes, and necessary documents to increase reproducibility, troubleshooting, and success of the systematic review on the breast cancer topic.

**Here are a few guidelines to start with.**
- Since everyone is encouraged to do the literature review on their own, despite this being a collective task, kindly push your code in this repo to increase our speed.
- I encourage everyone to name their script files using their initials. For instance, ```_so.R_``` for Steve Odette, etc. This would, alongside other metadata, help us track which file belongs to whom.


# Quick way to set up:
## Initial setup. Do this once...
```bash
cd /path/to/your/working/directory

git init

git remote add origin https://github.com/biogenke/breast_cancer_lit_review.git

git config --global user.email "biogenke@gmail.com"
git config --global user.name "biogenke"

git branch -M main
```
## Start from the latest main
```
git checkout main
git pull --rebase origin main
```
## Create your working branch
```git checkout -b my-branch```

## Work and commit
```
git add .
git commit -m "your commit message"
```
## Push to your branch
```
git push origin my-branch
```
## Before push, ensure your locate branch has an update of your remote:
```
git pull --rebase origin so
```
**Then just push**
- Open a Pull Request from my-branch → main
- The merge may happen automatically. You can also do it manually, or just leave it for me, I will do it.
- When prompted to sign in, click on tokens as a method for signing in, then key in this _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_
