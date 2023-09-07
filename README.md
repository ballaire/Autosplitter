# Papers, Please Autosplitter
This is a Livesplit autosplitter for the game Papers, Please. Download Livesplit from https://livesplit.org/.  
The autosplitter has only been tested on the latest Steam version of the game (1.4.11.124-S), and may or may not function correctly for other versions.  
The timings used attempt to align with the timing rules on https://www.speedrun.com/papers_please, but there is always a chance of small inaccuracies due to the nature of autosplitters. To be certain about the exact time of a completed run, use a retiming tool like https://vidtimer.com/.
## Install
### Option 1
The autosplitter can be used from Livesplit without downloading any files from this repository.  
1. Right-click the Livesplit window and select Edit Splits
2. Set the Game Name to "Papers, Please"
3. Click the Activate button
### Option 2
1. Download papersplease.asl
2. Right-click the Livesplit window and select Edit Layout
3. Click the plus sign and add a Scriptable Auto Splitter under Control
4. Double click the new component and Browse for papersplease.asl

## Use
While enabled, the autosplitter will automatically start the timer and split when conditions are met in-game. All actions are taken when releasing the click of a button.
### Start
The timer will start when clicking "NEW" from the save selection menu if the timer is not currently running  
### Split
The timer will split when  
1. Clicking "WALK TO WORK" at the start of a day after sleeping through the night (not when loading a previous save)  
2. Clicking the final "NEXT" when getting an ending  
