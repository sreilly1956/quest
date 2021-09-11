# A quest in the clouds solution

### Q. Application URL

Here is the URL: http://ec2-54-157-60-223.compute-1.amazonaws.com/

### Q. Setup EC2 instance

I created an t2.micro with Amazon Linux. I first did sudo yum update and to my suprise there were no updates. I assume my AMI was recent (nice suprise).

Then I needed to install git, docker and terraform. Created my ssh private/publick key (ssh-keygen -t rsa") go I could upload to my GitHub account the public key.

### Q. Application solution sequence

I forked your "quest" repository into my GitHub account.

Then I went about creating the Dockerfile and the terraform.tf file (twelvefactor.tf). Now this took a little time as I needed to research terraform as I had never used the tool.

After I was able to build the image and create a container from this image I investigated creating a load balancer with self signed certificate. At which point I decide to stop. Did not want to incure the cost. Now I could have created a new AWS account using a new Gmail account which I would then be eligible for a free load balancer (750 hours). But I decide not to spend the time. 

1.  git clone git@github.com:sreilly1956/quest.git
2.  cd quest
3.  vi Dockerfile
4.  vi twelvefactor.tf
5.  terraform init
6.  terraform validate
7.  terraform apply

*** now of course there were many itterations through these command to get everythibg working.

### Q. How do I know I have solved these stages?

Each stage can be tested as follows:

1. Index page (contains the secret word) - `http://ec2-54-157-60-223.compute-1.amazonaws.com/`
2. Docker check - `http://ec2-54-157-60-223.compute-1.amazonaws.com/docker`
3. Secret Word check - `http://ec2-54-157-60-223.compute-1.amazonaws.com/secret_word`
4. Load Balancer check  - `http://ec2-54-157-60-223.compute-1.amazonaws.com/loadbalanced`
5. TLS check - `http://ec2-54-157-60-223.compute-1.amazonaws.com/tls`


### Q. What if I find a bug?

Not really a bug .. Apparently node version 10 is no longer maintained! I would suggest moving up to v16 so as not to get warnings.


