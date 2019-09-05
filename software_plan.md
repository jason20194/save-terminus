
## Description of the application
This terminal application is a simple text based adventure game which allows the user to play through a storyline, making decisions by inputting the numbers they want. The scope of the idea is pretty simplistic and very much has the same similarity as most adventure games: the basic plot is there is an evil being which takes over the world and the player must stop him. The application is run using ruby, as it is written in ruby language.

## Identify the issue that it resolves
This application was made purely for entertainment. Therefore it does not resolve any real life scenarios or issues.

## Statement of Purpose and Scope
The reason why I made this game was because I wanted to see how far my knowledge of ruby can go. It has only been 2 weeks since I learnt ruby, so at the same time I wanted to refresh my mind by trying to create a terminal based game. To me learning by doing is the most efficient method of learning there can ever be, especially since im a pattern learner. This may not be a very hard or advanced terminal application, however it is very good knowing that I am able to write basic ruby. If I want to be able to make much more complex apps in the future, this can be considered very good practice in preparation for it.

## Target Audience
This Terminal application is primarily targetting kids since most kids loves games. However, it can also be very helpful to people of any age who are interested in learning about the fundamentals of Ruby. Because this is not a very high level project, people with very little experience can break down how the game is made, which will may also help solidify their ruby skills. Another mention is that this program was built on a MacOS, so primarily it is made for MacOS users. As of current there are no other versions so Windows users may have trouble running it on their PCs.

## How will the audience use it
If the audience wants to use this application, they should refer to the README file. It will explain what software is required to run the game. However, they should have VSCode and the gems installed, as that is the basics needed to get the game running.

## Features
1) To start playing the game
- User will begin by running the game
- User will be greeted with the Main menu with 3 options: play, about and quit
- User will select the option they want with arrow keys and press enter on the Play option to play.

User to run the command from the terminal

The application then makes the outgoing http call to an external API running a loop while we are waiting for the result of the http call

Application then store the variable in its local scope then return the result to the main function to be printed on the terminal

Extra feature to include when the http call fails, it will use a fallback function to provide the joke

Fetch a random Chuck Norris joke and save to a folder called "chuck_norris_jokes" in the current directory, if it's not there it's created on the fly

After user select the command, a HTTP call is fired to the API

After the call is resolved, we make a file object with the result as the content then we make a directory as specified and then save the file inside the directory

if the directory exists, we will just save file in there instead

Run both features from above without going into the app from the CLI with appropriate argument option of either '-R' or '-W'

Same as the features above but instead of running off the menu system in the app

The program will just run from command line once and finish

Generate a random string and append the date the file is created to give unique file name

a function that generate a random string and append the date as the name of the file to be stored in the local filesystem

Offline support when the fetching api call fails

When feature one fails the default hard coded joke function will return a Chuck Norris Joke

User interaction and Experience
User will find out how to interact with the app by again going through the documentation provided in README.md

In the README, there are features listed for the app for user to try it out along with screenshots when they are using each features.

User will interact with the features either by selecting a predetermined options or use a valid argument flags for the main application from the terminal.

Error handling will be in three main areas: get a joke save to file and wrong command line arguments

if the get joke feature fails, a fallback joke will be provided so user won't see any error messages.

if the save file feature fails, user will get an message on the screen indicating that it failed.

if user enters the wrong argument on the command line, error will be shown like this:


