# Help

## Running the tests

## Testing interactively

Start the REPL from the directory that you downloaded the exercise to.

You can run the tests by loading the test file into the REPL with `(load "exercise-test")` (replacing "exercise" with appropriate name). Then evaluate `(exercise-test:run-tests)` to run all the tests.

If you write your code directly in the REPL then simply evaluate `(exercise-test:run-tests)`.

If you write your code in the exercise lisp file then load it with `(load "exercise")` then evaluate `(exercise-test:run-tests)`.

## Testing from the command line

You can launch the tests with this command line invocation (again, replace "exercise" with the appropriate name in two places)

```sh
ros run --load exercise-test.lisp --eval '(uiop:quit (if (exercise-test:run-tests) 0 1))'
```

## Submitting your solution

You can submit your solution using the `exercism submit sublist.lisp` command.
This command will upload your solution to the Exercism website and print the solution page's URL.

It's possible to submit an incomplete solution which allows you to:

- See how others have completed the exercise
- Request help from a mentor

## Need to get help?

If you'd like help solving the exercise, check the following pages:

- The [Common Lisp track's documentation](https://exercism.org/docs/tracks/common-lisp)
- The [Common Lisp track's programming category on the forum](https://forum.exercism.org/c/programming/common-lisp)
- [Exercism's programming category on the forum](https://forum.exercism.org/c/programming/5)
- The [Frequently Asked Questions](https://exercism.org/docs/using/faqs)

Should those resources not suffice, you could submit your (incomplete) solution to request mentoring.

## Setup

Check out [Installing Common
Lisp][track-install] for
instructions to get started or take a look at the guides available in
the [track's documentation pages][track-docs].

## Where to look for help

Any of the resources listed in the list of [Useful Common Lisp Resources][track-resources] are good places to look for information.

There are also some [Online Communities][awesome-cl-communities] which may be good places to go for help.

## Formatting

While Common Lisp doesn't care about indentation and layout of code,
nor whether you use spaces or tabs, this is an important consideration
for submissions to exercism.
Exercism.org's code widget cannot handle mixing of tab and space characters well so using only spaces is recommended to make
the code more readable to the human reviewers.
Please review your editors settings on how to accomplish this.
Below are instructions for popular editors for Common Lisp.

### VIM

Use the following commands to ensure VIM uses only spaces for
indentation:

```vimscript
:set tabstop=2
:set shiftwidth=2
:set expandtab
```

(or as a oneliner `:set tabstop=2 shiftwidth=2 expandtab`). This can
be added to your `~/.vimrc` file to use it all the time.

### Emacs

Emacs is very well suited for editing Common Lisp and has many
powerful add-on packages available. The only thing that one needs to
do with a stock emacs to make it work well with exercism.org is to
evaluate the following code:

`(setq-default indent-tabs-mode nil)`

This can be placed in your `~/.emacs` (or `~/.emacs.d/init.el`) in
order to have it set whenever Emacs is launched.

One suggested add-on for Emacs and Common Lisp is
[SLIME][slime] which offers tight integration
with the REPL; making iterative coding and testing very easy.

## Submitting Incomplete Solutions
It's possible to submit an incomplete solution so you can ask for mentoring to help you come to the correct solution.

[awesome-cl-communities]: https://github.com/GustavBertram/awesome-common-lisp-learning#online-community
[slime]: https://github.com/slime/slime
[track-docs]: /docs/tracks/common-lisp
[track-install]: /docs/tracks/common-lisp/installation
[track-resources]: /docs/tracks/common-lisp/resources