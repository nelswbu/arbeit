# arbeit
German for "work", *arbeit* is a central and extendable collection of scripts to increase the speed and efficiency of
the development process. Namely, *arbeit* was created to save time and energy when managing (storing/organizing) and 
executing (copy/pasting) lengthy commands. It also creates a single location for critical commands, effectively
decreasing knowledge transfer and developer collaboration.

## Usage
*arbeit* uses a single `Makefile` with extremely succinct direction labels and variables to keep freehand typing at a 
minimum. These directions in turn call the appropriate bash file located in the `scripts` directory. Each bash file
includes helpful print statements and validation for maximum transparency and correctness.

### Examples

Run a **telepresence** service:
```shell
pod=auth port=5047 make tel
```

Get a **kubernetes** pod:
```shell
pod=auth make pod
```

Get a **kubernetes** pod logs:
```shell
pod=auth make logs
```

Kill a **linux** process by port number:
```shell
port=8080 make kill
```
