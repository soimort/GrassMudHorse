# GrassMudHorse Programming Language

A stack-based esoteric programming language inspired by Whitespace.

See [the original web site](http://code.google.com/p/grass-mud-horse/) for full
documentation of the base language.

## Installation

You need [Haskell 2010](http://www.haskell.org/haskellwiki/Haskell_2010) to compile and install this program.

    $ git clone git://github.com/soimort/GrassMudHorse.git
    $ cd GrassMudHorse/
    $ cabal install

## Getting Started

On the GrassMudHorse programming language, read the tutorial from [here](http://code.google.com/p/grass-mud-horse/wiki/A_Brife_To_GrassMudHorse_Language).

The GrassMudHorse interpreter: (`gmh`)

    $ gmh [file.gmh]

Whitespace to GrassMudHorse transcompiler: (`ws2gmh`)

    $ ws2gmh <[file.ws] >[file.gmh]

GrassMudHorse to Whitespace transcompiler: (`gmh2ws`)

    $ gmh2ws <[file.gmh] >[file.ws]

There are some examples (ported from equivalent Whitespace programs) in `examples/` directory.

Hello world in GrassMudHorse:

    $ gmh examples/hworld.gmh
    Hello, world of Grass-Mud-Horse!

Print a notorious poetry of 99 Grass-Mud-Horses, adapted from [99 Bottles of Beer](http://www.99-bottles-of-beer.net/lyrics.html):

    $ gmh examples/99-grass-mud-horses.gmh
    99 Grass-Mud-Horses on Male-Gebi,
    99 Grass-Mud-Horses,
    River Crab came and ate one Grass-Mud-Horse,
    98 Grass-Mud-Horses on Male-Gebi.
    ...

## Other implementations

* Java: <http://code.google.com/p/grass-mud-horse/>
* JavaScript: <https://github.com/dexteryy/GrassMudMonkey>
* Erlang: <http://code.google.com/p/grass-mud-horse/wiki/erlang_port>

## Contributions

The [Whitespace programming language](http://compsoc.dur.ac.uk/whitespace/index.php) and its original Haskell implementation were authored by [Edwin Brady](https://github.com/edwinb); Cabal support added by [@haroldl](https://github.com/haroldl) ([haroldl/whitespace-nd](https://github.com/haroldl/whitespace-nd)).

The great idea of [GrassMudHorse programming language](http://code.google.com/p/grass-mud-horse/) was proposed by [@bearice](https://github.com/bearice).
