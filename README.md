# react-web-service

This guide will walk you through the simple steps needed to build a React hello world app running on Rising Cloud.

# 1. Create Your Program

Clone all the files needed for this example from our [GitHub](https://github.com/Rising-Cloud-Examples/react-web-service) repo: 

```git clone https://github.com/Rising-Cloud-Examples/react-web-service```

# 2. Install the Rising Cloud Command Line Interface (CLI)
In order to run the Rising Cloud commands in this guide, you will need to install the Rising Cloud Command Line Interface. This program provides you with the utilities to setup your Rising Cloud Task or Rising Cloud Web Service, upload your application to Rising Cloud, setup authentication, and more. If you haven’t already, [click here](/docs/install) to for instructions to install Rising Cloud CLI.

# 3. Login to Rising Cloud Using the CLI
Using a command line console (called terminal on Mac OS X and command prompt on Windows) run the Rising Cloud login command. The interface will request your Rising Cloud email address and password.

```risingcloud login```

# 4. Initialize Your Rising Cloud Task

Create a new directory to place your project files in, then open this directory with your command line.

Using the command line in your project directory, run the following command replacing $TASK with your unique task name.

Your unique task name must be at least 12 characters long and consist of only alphanumeric characters and hyphens (-). This task name is unique to all tasks on Rising Cloud. A unique URL will be provided to you for sending jobs to your task.

If a task name is not available, the CLI will return with an error so you can try again.

```risingcloud init -w $TASK_URL```

This creates a **risingcloud.yaml** file in your project directory. This file can be used to configure the build script.

# 5. Configure your Rising Cloud YAML

Configure your risingcloud.yaml

In the previous step, a risingcloud.yaml file should have generated in your project directory. Open that file and change the port to:

```
port: 3000
```

# 6. Build and Deploy Your Rising Cloud Task
Use the push command to push your updated risingcloud.yaml for your Web Service on Rising Cloud.

```risingcloud push```

Use the build command to zip, upload, and build your app on Rising Cloud.

```risingcloud build```

Use the deploy command to deploy your app as soon as the build is complete.  Change $TASK to your unique task name.

```risingcloud deploy $TASK```

Alternatively, you could also use a combination to push, build and deploy all at once.

```risingcloud build -r -d```

Rising Cloud will now build out the infrastructure necessary to run and scale your application including networking, load balancing and DNS.  Allow DNS a few minutes to propogate and then your app will be ready and available to use!

# 7. Use Your Web App

Open your Web Browser and navigate **https://$TASK.risingcloud.app** Change $TASK to your unique task name.

Rising Cloud will take a few moments to spin-up your app, and proces your request.  In the future it will learn from the apps usage patterns to anticipate usage, making instances available in advance of need, while also spinning down instances when not needed.  

You should see within your Web Browser

```Hello Rising Cloud!```

Congratulations, you’ve successfully used React as a Web Service on Rising Cloud!
