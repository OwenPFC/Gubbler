# The Gubbler in the Baubled Bubbler

The Gubbler was conceived in **two days** for the 2025 Global Game Jam.
The theme was "bubbles", and in Wisconsin they call water fountains "bubblers". The game seemed obvious from there

You control The Gubbler, a little goblin that lives in a water fountain dubbed the "baubled bubbler". He has a little crank that he uses to change the size of the pipe in the fountain, changing the pressure to alter the distance the water travels. Your aim is to get water in the mouths of people that come to the fountain

# Some technical notes

Before I get to the programming complaints, I want to say that I am quite fond of how I animated The Gubbler. It was a pain, and it took many many attempts and redrawing, but I got a little guy who ~85% of the time looks like he's really turning a crank. He's the triumph of the project for sure.

Now, I made this game in two days. The programming is abyssmal. My main goal for the game was to somewhat accurately portray Bernoulli's Principles with regards to water pressure and distance. While it does **appear** to somewhat mimic this, the actual physics in the code is total garbage that I made up.

The way that I make the water "run" is not good and caused me to wrestle with endless null pointers. In retrospect, I probably would have scaled the initial water point in some way, rather than spawning in ~30 blue pngs to mimic a stream of water. I ended up with something usable though, which is quite good considering that for 90% of the development time it didn't work at all
