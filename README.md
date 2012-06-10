# Whitespace #

See [the original web site](http://compsoc.dur.ac.uk/whitespace/) for full
documentation of the base language.

# Local Changes #

## Cabal support ##

You can use the "cabal install" command to build and install the wspace
executable.

## Shuffling in Whitespace ##

Until now, programmers interested in using randomized algorithms in Whitespace
have been required to supply some random stuff as input to their program. To
solve this, I propose adding a new instruction to the Whitespace language that
will shuffle the stack. This feature can then be used to implement various
randomized algorithms, including a random number generator.

### Command Reference and Sample Program ###

As a stack operation, this instruction is prefixed by the [Space] IMP. The
command code is selected to allow for future expansion of Whitespace's stack
operations and in homage to a musical group that my wife assures me is not
disco.

<table>
  <tr>
    <th>Command Parameters</th> <th>Meaning</th>
  </tr>
  <tr>
    <td>[Tab][Tab][Space]</td>  <td>Randomly permute the order of all values on the stack.</td>
  </tr>
</table>

There is a sample program which prints out the digits 0-9 in a random order:

* examples/randperm.ws
