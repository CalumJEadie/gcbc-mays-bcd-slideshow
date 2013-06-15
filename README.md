GCBC Mays BCD Slideshow
=======================

Raspberry Pi and IFTTT powered slideshow for Girton College Boat Club Mays Boat Club Dinner 15/06/2013.

Getting the images





One off google account

gcbc-mays-bcd-slideshow@gmail.com

One off IFTTT account

gcbcmaysbcdslideshow

One off facebook account

https://www.facebook.com/gcbcmays.bcdslideshow

Connect existing Dropbox account to IFTTT

(One you're happy IFTTT having full access to)





Trigger - Facebook, You are tagged in a photo

Action - Dropbox, Add file from URL

URL: {{ImageSource}}
Name: {{Caption}}
Path: gcbc-mays-bcd-slideshow/facebook





Trigger - GMail, Any new attachment

Action - Dropbox, Add file from URL

URL: {{AttachmentPrivateURL}}
Name: {{AttachmentFilename}}
Path: gcbc-mays-bcd-slideshow/email





Use Photograbber, http://photograbber.org/download.html, to download any missing Facebook photos.


Share folder so people can preview

https://www.dropbox.com/sh/5nf3znzen657rpw/g12O88rDoV



Tell everyone about it!





Displaying the images.


Install pqiv

http://themanbehindthecode.com/2013/03/29/raspberry-pi-slideshow/










Why create a new account for each service?

Makes it really easy to close everything down. IFTTT does not allow many instances
of a service to be associated with a single IFTTT account.

Why use a Facebook account rather than a page?

A Facebook page does not support the "You are tagged in a photo" trigger