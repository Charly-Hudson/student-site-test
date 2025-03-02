# How do you get started?
## To get started you will need some HTML/CSS and maybe an image or two to get you started, i have provided for you a zip folder with some VERY BASIC code.

## Use this as a springboard to go an make your own site!

## For more information on how to create site see the associated links in the next section.

|=============================================================================================|

How do I get started coding?
 

Roadmap.sh is a really good place to get started click [Here](https://roadmap.sh) to view the Front End roadmap.

Another great site to get some free learning from is [w3schools](https://w3schools.com), it give lots of breakdowns in HTML CSS JS and more 

See below a selection of links to Youtube Playlists

|========================| |========================| |==========| 
| [Kevin Powell Playlists](https://www.youtube.com/%40KevinPowell/playlists) | | [HTML/CSS for Beginners](https://www.youtube.com/playlist?list=PL4-IK0AVhVjOJs_UjdQeyEZ_cmEV3uJvx) | | [CSS-Only](https://www.youtube.com/playlist?list=PL4-IK0AVhVjPahXlB-fbe0E_ThEBR20N1) | 
|========================| |========================| |==========| 

|===================| |===============| |===================| |=========|
| [Javascript Basics](https://youtube.com/playlist?list=PL4-IK0AVhVjOEP1ay4HTVQGe-q0-SCFmP&si=b7mqipWjYBxfq9Fi) | | [Browser Games](https://youtube.com/playlist?list=PL7lhMROXakvdLAUKFNLYl_J2Ti0Ulr6ID&si=wvgpUKNFzmSwl7Gs) | | [Scroll Animations](https://youtube.com/playlist?list=PL4-IK0AVhVjO0Y6TRhQZI2hpZmZrLWlul&si=utz-YfaYusNF41uD) | | [Web dev](https://www.youtube.com/playlist?list=PLjcKs513P2B6gsbRX379mQo4Uu3ATFsSM) |
|===================| |===============| |===================| |=========|

# Getting Started with AWS!
## First things first, you need to create an S3 bucket

Now, S3 is tied to the region, so I highly recommend that you select North Virginia as your region, as it is the cheapest and all services are available in it. While it is a regional service, the name needs to be globally unique. See details for it here.

When creating this bucket, you do not need to change anything except the name.

So, log in to your console and navigate your way to the S3 console, then select the Create Bucket button.

Later, if you wish to turn on versioning for your bucket, head to the Properties tab and enable it. This is also where you can enable deletion protections.

# Uploading the Site
## Next, we need to upload our files

To start uploading, select your bucket name from the menu and then click the (⬆ upload) button. When uploading, be sure to keep the same file **structure**, as it will affect the way the HTML works. The easiest way to do this is to upload the assets folder first using the **Add Folder** option, then add the index.html document with the **Add File** button afterwards.

You will see that the styles.css and ALPS.png files have assets/css or img, respectively, meaning it will create that file **structure** for you. Then, all you need to do is click the **Upload** button.

# Creating your CloudFront Distribution
## Now to CloudFront

In your console, navigate to the search bar and search for CloudFront. Right-click the CloudFront link and select **Open in a New Tab**—this will be important later.

In CloudFront, select **Create Distribution**, and in the **Origin Domain**, select the S3 bucket you uploaded your files to.

Next, go to **Origin Access** and select the recommended **Origin Access Control Settings**, then create a new one.

In the **Create OAC section**, keep everything the same and just click **Create**.

In the **Default Cache Behaviour** section, under **Viewer Protocol Policy**, select **Redirect HTTP to HTTPS**.

In the **Web Application Firewall** section, do not **enable security protections**.

Finally, set your **Default Root Object** to **index.html** (or your homepage).

Now that you have created the distribution, all you need to do is copy the **S3** policy from the popup, navigate back to the S3 tab, and select the **Permissions** tab. At the bottom, click the Edit button. In the blank policy field, simply paste the copied JSON and select *Save Settings*.

To get your URL, go back to your *CloudFront Distribution* tab and copy your **Distribution Domain Name**. Paste that into your browser and wait. If you see This site cannot be reached, double-check that CloudFront has finished deploying.
