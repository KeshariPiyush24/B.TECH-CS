# ```chmod``` Command

## **Syntax**
>chmod [reference][operator][mode] file

```bash
#!/bin/bash
chmod 777 fiel.txt #The chmod command sets the file permissions flags on a file or folder.
```
>
- 0 No permission
- 1 Execute permission
- 2 Write permission
- 3 Write and execute permissions
- 4 Read permission
- 5 Read and execute permissions
- 6 Read and write permissions
- 7 Read, write and execute permissions

| Operator | Description                                                                  |
| -------- | ---------------------------------------------------------------------------- |
| +        | Adds the specified modes to the specified classes                            |
| -        | Removes the specified modes from the specified classes                       |
| =        | The modes specified are to be made the exact modes for the specified classes |


| Reference | Class  | Description                                                            |
| --------- | ------ | ---------------------------------------------------------------------- |
| u         | owner  | file's owner                                                           |
| g         | group  | users who are members of the file's group                              |
| o         | others | users who are neither the file's owner nor members of the file's group |
| a         | all    | All three of the above, same as ugo                                    |