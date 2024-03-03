
## **This site**

A few details on the construction of this website. I've no doubt that some security flaw is going to make me regret being so transparent, but such is the price I pay for being so open! 


As someone who tries hard to avoid over-engineering solutions in a professional environment, I evidently scratch that itch with my personal projects and this website is a stellar example of this. 
As you have probably seen from the landing page, the site structure is pretty basic. Under the hood it's running a nifty Golang app called [Hugo](https://gohugo.io/). Hugo itself is neat and simple and it being Golang has little bearing to how it is used (much to my disappointment). My Hugo repo for this site can be found [here](https://github.com/DarraghMcC/darraghmc.com).

The infrastructure itself is probably where things go overboard. Everything is done through [Terraform](https://www.terraform.io/). The site itself is a cloudfront distribution backed by an s3 bucket and relevant route53 A records. 

Emails to the website domain are done using a neat [cloudposse module](https://github.com/cloudposse/terraform-aws-ses-lambda-forwarder) which creates an email forwarder using a combination of AWS SES and Lambda running the aws-lambda-ses-forwarder NPM module.

All of the code for this site is stored [here](https://github.com/DarraghMcC/site-deploy).

The terraform state for all of this is stored in an s3 bucket. The infrastructure for creating this s3 bucket is also created through my terraform repo [here](https://github.com/DarraghMcC/tf-states). Where things get really meta is the state repo has its own state set up in the same way...
