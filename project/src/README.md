# project/src

Your project's Go code will go here.

Note that, 3rd party Go code will go in the `vendor` directory, not here.

## Building

After you have done a `vagrant ssh` (to get inside the vagrant-based development environment)....

To build your Go project, run the following `gb` command:
```
gb build
```

(Note that that is using the `gb` command not the `go` command.)

The resulting binary program from that build will be put in the director `project/bin`.
