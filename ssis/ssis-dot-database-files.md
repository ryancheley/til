# SSIS .database files

When you open an SSIS solution (aka `sln` file) a `database` file is expected to be in the same directory, and if it's not it will be automatically created.

If you don't include the `*.database` in your VCS then some weird stuff can happen. When the ETL team at work migrated over to git last September we added `*.database` to the `.gitignore` file believing that it wasn't something that should be source controlled. 

What we've seen over the last several months are cases where a developer will open the solution, not make any changes, but git will recognize a change because of the `.database` file that was created and then linked up to the solution. 

So I wanted to find out what exactly the `.database` file is, and what it does. 

Per the [Microsoft docs](https://learn.microsoft.com/en-us/sql/integration-services/integration-services-ssis-projects-and-solutions?view=sql-server-ver16&redirectedfrom=MSDN#files-in-integration-services-projects) this file

> contains information that SQL Server Data Tools (SSDT) requires to open the Integration Services project.

So, it's needed by the solution, but is also quite happy to create the file on the fly and cause weirdness with the git repo by reporting changes when there aren't any.

The fix for this of course is to just make sure that the `.database` file is part of the repository initially, but what do you do if you added it to the `.gitignore` file like I did? 

Here's what you can do to fix this for a single SSIS package:

1. Update the `.dtproj` file to remove the <database> ... </database> section of the XML (don't worry, it's going to be recreated!) ... you can do this in an app like Notepad++
2. Delete all of the `.database` files from the solution directory
3. Open the Solution (`sln`) in Visual Studio

Once that's done you should have a good `.database` file that doesn't have any extra numbers in the name of the file. 

The next step is to remove the `*.database` from the `.gitignore` file since you'll want to have that be part of your source control

Finally you'll add the changes you've made AND the `.database` file to your repository and commit them.

Now when other ETL developers pull down the repository they won't have changes to the solution simply form opening it