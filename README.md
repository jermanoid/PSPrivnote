# PSPrivnote

This is a function I created that will create a private message from the Powershell CLI using privnote 
It works by silently creating an internet explorer session in the background. 
Fills in the text entry field with your provided message, and clicks the encrypt button.
When the website provides the link, powershell grabs it, and displays it in your console window
Then it closes the hidden browser session.

Usage: place this function into your script. call the function and pass a message variable, or put it into your powershell $profile so that you can run 
Privnote "Lorum Ipsum" any time you fire up a powershell window.

There are better ways to do this, I'm sure. Privnote uses javascript to hash the message, so it isn't sent over plaintext over the HTTPS encrypted session (which is frequently decrypted/re-encrypted by businesses) There is a python method of doing this but it did not work for me due to my business re-encrypting our sessions.. I'd love a hand mirroring what was done with https://pypi.org/project/pyPrivnote/
