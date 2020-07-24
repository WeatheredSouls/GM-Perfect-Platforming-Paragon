# Downgrade of Dave's platformer demo to GameMaker 2.2
I began this downgrade because the original demo was written in the 2.3Beta of GameMaker that I did not have access to as I am on the trial version of 2.2

I managed to port most of the code and objects over, but there are still some lingering bugs that I didn't work out. The most recent I noticed that the console does not come up when pressing F1.



Play a live version of Dave's original code at his site here: http://www.davetech.co.uk/gamedevplatformer

*Some of the things from Dave's Demo*

![Tips and tricks for platformers](http://www.davetech.co.uk//i/github_images/platformer_tricks_and_tips.gif)

A collection of many tricks that can be added to platforming games that make jumping feel better. They aim to make the character move how the player wants, not necessarily how the player pressed. 

![Using Coyote Time in platformers](http://www.davetech.co.uk//i/github_images/platformer_coyote_time.gif)

**Coyote Time** – Allows players to press jump a few frames late when running off an edge.

![Catching a jump in Platformers](http://www.davetech.co.uk//i/github_images/platformer_catching_a_jump.gif)

**Catch missed jumps** - If a player doesn't quite make their jump the game should be lenient and give them the extra height, it's doubly important with animations and hit boxes that might lift up the feet when in the air.

![Changing turnback speed at top of jump in platformers](http://www.davetech.co.uk//i/github_images/platformer_turnback_speed.gif)

**Change direction quicker at apex** – Allows players to cancel a jump mid-air and go back to where they were standing, Allows better control over where they land (especially if it's a moving target), Can better get collectable when in air.
