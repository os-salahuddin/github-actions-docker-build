# Building and Pushing a Docker Image using GitHub actions.


Here is where GitHub Actions comes to the rescue.

Using GitHub Actions, all we need to do is write is a small YAML file that will build a Docker image and push it to Docker Hub whenever you make any commits to GitHub.

## Step 1 
is to create a GitHub repo for your Docker image. If you were already using the old Docker Automated Build system, you must be having a GitHub repo too. So you can use the same.

## Step 2 
is to compose a Dockerfile. Again, if you already had an automated build in the past, you would be having this Dockerfile too. I have written a very simple Dockerfile For a flask application which application print "Hello from app1".

## Step 3 
is where we write our GitHub workflows YAML file. GitHub actually provides us with a template for this. So we need not worry much about this. Just head to Actions. Then click on Set up this workflow; for the Docker Image workflow.

## Step 4. 
Edit this template YAML file that you get. Change the name of the Docker image and its tag to your actual one. You can see that this template only has a step to build the image. We also need to push the image. To do that, add an extra step below. Name it as "Push the Docker image". And in the "run" part, write a script to log in to Docker Hub; and then push your image to it. You can see here that we are storing the password as a GitHub Secret. I will show how we can set that in the next step. Just commit this one for now. This build will fail because we do not have the token set. That is fine, we will retrigger the build after setting the token.

## Step 5, 
you need to get a Docker Token for yourself. If you already know what this is and have a Docker token, you can skip to the next step. Otherwise, for getting the Docker token, log in to Docker Hub at hub.docker.com. Then click on your profile and go to account settings. Then go to the Security section and click on New Access Token. Give a description to the token. I am going to name mine as "Token with all permissions". Then click on Generate. Make sure to copy the token and store it in some place safe like your password managers or Google Drive, etc. This is the last time you will see your Token. So make absolutely sure to copy it. Also, don't share your token with anyone else. It is as powerful as your password. I will deactivate this token as soon as I complete this video. That's it in Docker Hub.

## Step 6. 
Get back to your GitHub repository. Head to your repo Settings. Then go to the Secrets section. Click on "New repository secret". Then name it DOCKER_TOKEN. Because that is what we used in our YAML file too. Paste the token that we copied from Docker Hub. Click on Add Secret.

 

That's it. Now you should see the workflow run successfully. Go to your Docker Hub repo and you will see your new Docker Image there.

We have successfully completed building and pushing a Docker Image using GitHub actions.

