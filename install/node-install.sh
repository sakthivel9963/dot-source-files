#! /usr/bin/env bash

echo "
***********************************************
Node js global permission denied error

mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.bashrc
***********************************************
";
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
export PATH=~/.npm-global/bin:$PATH
source ~/.bashrc
echo "
***********************************************
npm install -g jshint
***********************************************
";
npm install -g jshint
echo "
***********************************************
npm i -g eslint
npm i -g tslint
npm i -g create-react-app
***********************************************
";
npm i -g eslint
echo "
***********************************************
npm i -g tslint
***********************************************
";
npm i -g tslint
echo "
***********************************************
npm i -g create-react-app
***********************************************
";
npm i -g create-react-app

echo "
***********************************************
npm default setting

npm config set init.author.email "sakthivel9963@gmail.com"
npm config set init.author.name "sakthivel"
npm config set init.license "MIT"
npm config set init.version "0.0.1"
npm config set registry "https://registry.npmjs.org/"
npm config set strict-ssl false
npm config set proxy false
npm config list
***********************************************
";
npm config set init.author.email "sakthivel9963@gmail.com"
npm config set init.author.name "sakthivel"
npm config set init.license "MIT"
npm config set init.version "0.0.1"
npm config set registry "https://registry.npmjs.org/"
npm config set strict-ssl false
npm config set proxy false
npm config list