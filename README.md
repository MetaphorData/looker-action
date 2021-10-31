# Metaphor Looker GitHub Action
A [GitHub Action](https://docs.github.com/en/actions) for publishing Looker metadata to [Metaphor](https://metaphor.io).

# Usage

Add the following to the [GitHub Workflow](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions) in your LookML project repository.

```yaml
- uses: MetaphorData/looker-action@v1
  with:
    # Base URL for your Looker instance, generally in the form of "https://<your_company>.cloud.looker.com"
    looker-base-url: ''

    # Client ID & secret for API authentication    
    looker-client-id: ''
    looker-client-secret: ''

    # Path to the Looker project, generally "./"
    lookml-dir: ''
    
    # A JSON file containing Looker database connections settings
    connection-map: ''

    # (Optional) The URL pointing to the project source code directory, e.g. https://github.com/<account>/<repo> or https://<account>.cloud.looker.com/projects/<project>/files/
    project-source-url: ''

    # S3 URL for the output, in the form of s3://<bucket>/<file_name>.json
    s3-path: ''
```

`connection-map` points to a JSON file (relative to the repo root) that contains the settings for all Looker database connections used in your LookML project. The format looks like this:

```json
{
  "<connection_name>": {
    "database": "<database_for_the_connection>",
    "default_schema": "<optional_default_schema>",
    "account": "<snowflake_account_identifier>"
  }
}
```

You can find these settings under `Admin` > `Database` > `Connections` in Looker.

# License

The scripts and documentation in this project are released under the [Apache V2 License](./LICENSE).
