# A quest in the clouds solution

### Q. Application URL

Here is the URL: http://ec2-54-157-60-223.compute-1.amazonaws.com/

### Q. Setup EC2 instance

I created an t2.micro with Amazon Linux. I first did sudo yum update and to my suprise there were no updates. I assume my AMI was recent (nice suprise).

Then I needed to install git, docker and terraform. Created my ssh private/publick key (ssh-keygen -t rsa") go I could upload to my GitHub account the public key.

### Q. Application solution sequence

I forked your "quest" repository into my GitHub account.

Then I went about creating the Dockerfile and with the terraform.tf file (twelvefactor.tf). Now this took a little time as I needed to research terraform as I had never used the tool.

After I was able to build the image and create a container from this image I investigated creating a loadbalancer with self signed certificate. At which point I decide to stop. Did not want to incure the cost. Now I could have created a new AWS account using a new Gmail account which I would then be eligible for a free load balancer (750 hours). But I decide not to spend the time. 

1.  git clone git@github.com:sreilly1956/quest.git
2.  cd quest
3.  vi Dockerfile
4.  vi twelvefactor.tf
5.  terraform init
6.  terraform validate
7.  terraform apply

### now of course there were many itterations through these commandto get everythibg working.

### Q. What do I have to do?

You may do all or some of the following tasks. Please read over the complete list before starting.

1. If you know how to use git, start a git repository (local-only is acceptable) and commit all of your work to it.
2. Deploy the app in AWS and navigate to the index page. Use Linux 64-bit as your OS (Amazon Linux preferred).
3. Deploy the app in a Docker container. Use `node:10` as the base image.
4. Inject an environment variable (`SECRET_WORD`) in the Docker container. The value of `SECRET_WORD` should be the secret word discovered on the index page of the application.
5. Deploy a load balancer in front of the app.
6. Use Infrastructure as Code (IaC) to "codify" your deployment. Terraform is ideal, but use whatever you know, e.g. CloudFormation, CDK, Deployment Manager, etc.
7. Add TLS (https). You may use locally-generated certs.

### Q. How do I know I have solved these stages?

Each stage can be tested as follows:

1. Index page (contains the secret word) - `http://ec2-54-157-60-223.compute-1.amazonaws.com/`
2. Docker check - `http://ec2-54-157-60-223.compute-1.amazonaws.com/docker`
3. Secret Word check - `http://ec2-54-157-60-223.compute-1.amazonaws.com/secret_word`
4. Load Balancer check  - `http://ec2-54-157-60-223.compute-1.amazonaws.com/loadbalanced`
5. TLS check - `http(s)://<ip_or_host>[:port]/tls`


### Q. What if I find a bug?

Not really a bug .. Apparently node version 10 is no longer maintained! I would suggest moving up to v16 so as not to get warnings.


