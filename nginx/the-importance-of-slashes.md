# nginx and slashes

While trying to get a subdomain for my [annotated notes](https://annotated-notes.ryancheley.com) I was setting up an nginx configuration file. I copied one of my other sites configuration file and made (what I thought were) the needed updates, but for some reason I kept getting a 400 bad request. 

The error log didn't give me any information and so I googled as one does. After about 30 minutes of finding nothing really useful, I realized that this line

```
root /home/annotated-notes/;
```

should have looking like this

```
root /home/annotated-notes;
```

🤷🏼‍♂️