# PSPrivnote

This was created using Powershell 5.1. I believe this will not work on powershell 7.0 or higher due to changes involving Microsoft breaking away from using internet explorer.

Usage: place this function into your script. call the function and pass the $message variable, or put it into your powershell $profile so that you can run 
Privnote "Lorum Ipsum" any time you fire up a powershell window.

This is a function I created that will create a private message from the Powershell CLI using https://Privnote.com 
It works by silently creating an internet explorer session in the background. 
It then fills in the text entry field with your provided message, and clicks the encrypt button.
When the website provides the link, powershell grabs it, and displays it in your console window
Then it closes the hidden browser session.

There are better ways to do this. Privnote uses browser side javasacript to hash the message, so it isn't sent over plaintext over the HTTPS encrypted session (which is frequently
decrypted/re-encrypted by businesses) There is a python method of doing this but it did not work for me due to my business re-encrypting our sessions. Plus I wanted to create it
in Powershell anyway. 

I'd love some advice on mirroring what was done with https://pypi.org/project/pyPrivnote/. But as it stands it works. 
