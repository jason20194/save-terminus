# Save-Terminus

The aim of the project is to create a text based short adventure game using fundamentals of the computer language Ruby. In this project I created a text adventure game named Save Terminus. This game tells the story about an evil king who has come into the world and put a curse onto it, reversing the time of the world known as Terminus. In order to save the world, you the player will choose your own adventure and choices and try to survive the stages leading up to the final boss, which is the evil king himself. The aim of the game is to defeat him so that you can turn the world back to normal. 

## Getting Started

To begin, make sure that the ruby gem is installed. we will need all the gems listed below:
1) tty-prompt
2) tty-font
3) pry
4) colorize

After all the gems are installed, install VSCode. VSCode will work for both MacOS and Windows. Also ensure all the files of the app are installed, as some require others to be in the same directory in order for it to work. There are a total of 8 files which are required to get the game running (except test).

### Prerequisites

To install the gems, you would first need a terminal. In MacOS this is already built in but if on Windows, you must find a terminal app to download. 

### Installing

1) Install VSCode by looking up the website and downloading it.
2) Install the gems by typing in gem install (name_of_gem) eg gem install pry will install pry. You should have these commands executed:
```
    gem install tty-prompt
    gem install tty-font
    gem install pry
    gem install colorize

```
## Running the tests

Here is an example of running a test to see whether the health will be updated after stage 1 of the game:

```
def test_stage_one
  # what we want the test to do
  # test stage_one method to ensure that health is not equal to 100 once updated

  # dummy data
  health = 100

  # call the method
  updated_health = StageOne.run(health)

  # write the test
  if updated_health != 100
    # the test passes
    puts 'The test passes!'.colorize(:green)
  # do not choose option 4 as health is not lost
  else
    # the test fails
    puts 'The test fails!'.colorize(:red)
  end
end
test_stage_one
```
Heres another example of running a test but this time we will be testing to see whether the variable health is an integer:

```
def test_stage_two
  # what we want the test to do
  # test stage_two method to ensure that an integer is being returned

  # dummy data
  health = 100

  # call the method
  updated_health = StageTwo.run(health)

  # write the test
  if updated_health.class == Integer
    # the test passes
    puts 'The test passes!'.colorize(:green)
  else
    # the test fails
    puts 'The test fails!'.colorize(:red)
  end
end
test_stage_two
```
## Built With

* [VScode](https://code.visualstudio.com) - The web framework used
* [tty-prompt](https://github.com/piotrmurach/tty-prompt) - gem for menu buttons
* [tty-font](https://github.com/piotrmurach/tty-font) - gem for font text
* [colorize](https://github.com/fazibear/colorize) - gem for putting different colors on text
* [pry](https://github.com/pry/pry) - gem for interactions and calculations on ruby


## Authors

* **Jason Liu** - *Initial work* - [jason20194](https://github.com/jason20194)


