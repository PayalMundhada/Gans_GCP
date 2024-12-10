# Gans_GCP
Data engineering project with Cloud pipline. 
## Summary
This project involved two major phases: building a local pipeline and migrating it to the cloud.
To create a data pipeline locally, which involves collecting data from external sources, transforming it, and storing it in a SQL database.
This pipeline to be elevated to Cloud
## Languages and Libraries Used
[SQL, Python, Pandas, Requests, datetime, pytz, sqlalchemy]

## Key Learnings
- Data collection is to be done taking into account our goal. Depending on our goal dataset may varrie.
- Data collection using API and storing it to SQL database.
- Updating database considering what is static information and what is dynamic.
- Creating SQL Instance and function on Google Cloud
- Scheduling functions on Cloud to avoid human interference to collect data at regular interval of time.
- Simulating Cloud Functions from local machine.
  
## Challenges Overcame
- Avoiding duplicating data in result data redundancy.
- updating SQL database using python

## Additional Reflections
- There is always a scope of improvement in logic.
- Before implementing the logic it should be overlooked so recoding efforts can be minimized
- At the same time tackling diffult scenarios in the initial phase is difficult
