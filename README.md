# Example Infrastructure

This is the repository for the infrastructure. Developed by the labs' team.

Use the following development workflow to code features or fixes for this app.

- Create a feature/fix branch
- Code the new feature
- Create a Merge Request to the target environment:
  - Production: main branch
  - Staging: staging branch
  - Dev: dev branch
- On every new commit, the code will be lint and tested and you could get your feedback in the Actions section of GitHub.
- When the Merge Request is reviewed and merged, the new version of the application will be deployed into the target environment cluster.