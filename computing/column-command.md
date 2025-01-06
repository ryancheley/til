column command

TLDR: column is a linux cli that lets you output stuff in columns

## Discovery
Stumbled across a video on YouTube

## Explanation
the `column` command will take output and let you put it into columnar to make it easier to read. It also has a table command `-t` to display it as a table. 

You can also output as json with the `-J` command

## Example

You can run something like 

```bash
cat /etc/passwd | column -t -s ":" -N USER,PW,UID,GUID,X,HOME,SHELL -H PW,X 

```

This will output a table of the users on a system with their 

- Username
- User ID
- Group ID
- Home Directory
- Shell on login

Or you can output json like this

```bash
cat /etc/passwd | column -J -N User,PW,UID,GUID,X,HOME,SHELL -H PW,X
```

## Why It Matters

This command can really help to make data more readable when interacting with it on a system. It can also allow you to output json from a system to be used with a REST API, or something similar

## Source
I learned it from [this video](https://youtu.be/uL7KvRskeog?si=iZDo_fg5cXVDRftR)
