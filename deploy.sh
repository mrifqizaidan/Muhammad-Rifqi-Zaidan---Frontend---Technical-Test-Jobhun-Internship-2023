#!/usr/bin/env sh
# abort on errors
set -e
# build
npm run build
# navigate into the build output directory
cd dist
# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:mrifqizaidan/Muhammad-Rifqi-Zaidan-FrontEnd-Intern-Technical-Test-Jobhun-Internship-2023.git master:gh-pages
cd -