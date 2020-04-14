# Cucumber+Ruby+Docker-Initial-Project-Example
> A simple example to start a httparty project with cucumber and docker


## Pré requesites:

## Ruby

```sh
  Windows Install:  https://rubyinstaller.org/downloads/
  ```
 ```sh
  Linux Install:  sudo apt-get install ruby-full
 ```
  
## Docker

```sh
  Windows Install:  https://hub.docker.com/editions/community/docker-ce-desktop-windows/
  ```
```sh
  Linux Install:  https://runnable.com/docker/install-docker-on-linux
```	
## VsCode

```sh
  Windows Install:  https://code.visualstudio.com/download
 ```
```sh
  Linux Install:  https://code.visualstudio.com/download
```
## VsCode Extensions:

  * Ruby	
  * Docker
  * Cucumber-mapper-ruby	
  * Snippets and Syntax Highlight for Gherkin (Cucumber)	
  * VSCode Ruby
  * vscode-icons
	
## Download the project or clone it and after in the project path run:

```sh
gem install bundler
bundle install
```
## To run the tests in dev

 ```sh
cucumber run -p dev -p html
```
## To run the tests in homolog

 ```sh
cucumber run -p hmg -p html
```
## To run the tests in prod

 ```sh
cucumber run -p prod -p html
```
## To run the tests in docker

 ```sh
docker-compose build
docker-compose up
```
## To generate the allure report

 ```sh
allure serve allure-results
```
