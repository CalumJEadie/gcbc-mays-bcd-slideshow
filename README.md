GCBC Mays BCD Slideshow
=======================

Using a Raspberry Pi and [IFTTT](http://ifttt.com) to power a slideshow for [Girton College Boat Club](http://www.girtoncollegeboatclub.com/) Mays Dinner 15/06/2013.

Overview
--------

IFTTT was used to collect photos from a large number of people using common web services. A Raspberry Pi was used to display the images.

Collecting photos
-----------------

Photos were collected by tagging a special Facebook account into Facebook photos or by emailing images as attached files to a special email account. Facebook tagging provides the quickest and easiest way to collect photos, as many photos are already on Facebook and the interface in familiar. Emails caters for other sources of images.

IFTTT was used to collect the tagged and emailed photos into a Dropbox folder. [PhotoGrabber](http://photograbber.org) was used to download any tagged photos missed by IFTTT.

### Requirements

1. A Google account. With this service and the following ones, a one-off account is convenient.

2. A Facebook account.

3. A Dropbox account.

4. An IFTTT account.

### Steps

1. Create an IFTTT recipe to add photos to a Dropbox folder when they are tagged on Facebook.

```
Trigger channel: Facebook
Trigger: You are tagged in a photo
    
Action channel: Dropbox
Action: Add file from URL
    
URL: {{ImageSource}}
Name: {{Caption}}
Path: gcbc-mays-bcd-slideshow/facebook
```

2. Create an IFTTT recipe to add photos to a Dropbox folder when they are attached to an email sent to a Google account.

```
Trigger channel: Gmail
Trigger: Any new attachment
    
Action channel: Dropbox
Action: Add file from URL
    
URL: {{AttachmentPrivateURL}}
Name: {{AttachmentFilename}}
Path: gcbc-mays-bcd-slideshow/email
```
    
3. Share Dropbox folder so people can preview the slideshow.

4. Use Photograbber to download any missing Facebook photos.

Displaying photos
-----------------

Photos were displayed on a Raspberry Pi attached to a TV using [PQIV](http://www.pberndt.com/Programme/Linux/pqiv/index.html), the image viewer.

### Steps

1. Install PQIV on Raspbian. At the time of writing the version in the Raspbian repositories has a bug so PQIV needs to be installed from source. Richard Silva has a great [write up](http://themanbehindthecode.com/2013/03/29/raspberry-pi-slideshow/) that explains this step.

2. Collect photos together in a directory. Update `$IMAGE_DIR` in the scripts.

3. Use `rename_slideshow_images.sh` to randomise the slideshow order by randomising file order.

4. Use `update_slideshow_image.sh` to periodically update the image displayed by PQIV.

5. Use `start_slideshow.sh` to launch PQIV.

Credits
-------

The PQIV installation instructions and scripts are based on Richard Silva's excellent [Raspberry Pi Slideshow write up](http://themanbehindthecode.com/2013/03/29/raspberry-pi-slideshow/).

Questions
---------

**Q. Why create a new account for each service?**

A. Makes it really easy to close everything down. IFTTT does not allow many instances
of a service to be associated with a single IFTTT account.

**Q. Why use a Facebook account rather than a page?**

A. A Facebook page does not support the "You are tagged in a photo" trigger.
