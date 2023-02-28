# Publish your Unity3D game to Itch.io easier
When I started development for [Delivery On Time](https://camperotactico.itch.io/delivery-on-time) I found myself tired of publishing updates for the game manually, so I wrote this simple bash script to automate a bit the process. 

## Requirements
* A machine capable of running bash scripts (Tested on Linux and MacOS)
* [Butler](https://itch.io/docs/butler/) installed and added to the PATH of your system.

## How to use it
1. Clone this repository.
2. Copy all files to the root of your Unity3D project.
3. Modify the different `.txt` files with the necessary information.
    
    >NOTE: This script assumes the names of the folders containing the executables for the different supported platforms match [Itch.io channel names](https://itch.io/docs/butler/pushing.html#channel-names). _(e.g. A build for Windows should be placed on YOUR_BUILDS_FOLDER/windows/MY_GAME.exe)_
4. Make the script executable using 
    `chmod +x ./publish-to-itchio.sh`
5. Run the script
    `./publish-to-itchio.sh`


## How do I automate my build proccess? 
I will publish another script soon that allows for automatic Unity3D builds to different platforms.

## Any feedback is welcome
Is this guide to vague? Do you think there is room for improvement in the code? Please, feel free to collaborate to this project so that other people can enjoy a better version of this script.
