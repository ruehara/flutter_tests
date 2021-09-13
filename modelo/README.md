# Sql Analyzer Project
Welcome to the Sql Analyzer documentation!
This documentation covers the configuration and use of this project. 

## Running on Windows
The sql_analyzer required two arguments.  <br />
  -i or --input: the name of the file to analyze.  <br />
  -t or --type: type of input file, query or sequence.  <br />
  
Examples:
```shell
sql_analyzer.exe -i "query.json" -t "query"
```
```shell
sql_analyzer.exe -i "sequence.json" -t "sequence"
```

## Structure of the Project
The Sql Analyzer Project is organized following the structure:

```shell
-sql_analyzer
  |_configurations
  |_data_access
  |_domain
  |_file_manager
  |_parser
  |_ldx_analyzer
```
## Configurations
 The Configuration manage the application settings, the application arguments and the database configuration.
 
 ### appSettings.Json
 ```shell
{
  "QuestionDirectory": "Questions",
  "UserQuestionDirectory": "UserQuestions",
  "SequenceDirectory": "Sequences",
  "ReportDirectory": "Reports",
  "LogDirectory": "Logs",
  "LogFileName": "sql_analyzer.log",
  "LogDetailLevel": "high",
  "UserProfile": "admin",
  "FirebirdPrefix": "@",
  "SqlServerPrefix": "@",
  "OraclePrefix": ":",
  "SqLitePrefix": ":"
}
```
**QuestionDirectory:** Name of the Question folder.<br />
**UserQuestionDirectory:** Name of the UserQuestion folder.<br />
**SequenceDirectory:** Name of the Sequence flder.<br />
**ReportDirectory:** Name of the Report folder.<br />
**LogDirectory:** Name of the Log folder.<br />
**LogFileName:** Name of the log file.<br />
**LogDetailLevel:** Level of the log. [low|medium|high]<br />
**UserProfile:** The User profile. [user|admin].<br />
**FirebirdPrefix:** The Firebird prefix for the parameterized queries.<br />
**SqlServerPrefix:** The SqlServer prefix for the parameterized queries.<br />
**OraclePrefix:** The Oracle prefix for the parameterized queries.<br />
**SqLitePrefix:** The SqLite prefix for the parameterized queries.<br />

### databaseConfig.json
The database configuration file contains two fields, <br />
- ConnectionString: String containing the host, database, user, password etc.<br />
- DataBaseType: The type of database, can be "oracle", "firebird" or "sqlserver".<br />
```shell
{
  "ConnectionString": "",
  "DataBaseType": ""
}
```
## Questions
The Questions folder contains the questions used to extract the requested informations.<br />
The Question file have the following structure:
```shell
{
    "Title"       : "Foreign Keys",
    "Description" : "Gets the foreing keys.",
    "RunParser"   : "false",
    "Dbms"        : [ "sqlserver" ],
    "BeforeSql"   : "",
    "Sql"         : [ " select table_name, constraint_name, status from all_constraints where constraint_type = 'R' and r_constraint_name in ( select constraint_name from all_constraints where constraint_type in ('P', 'U') and table_name = @tableName and owner = @databaseOwner );" ],
    "AfterSql"    : "",
    "Variables"   : [
        {
            "Name": "tableName",
            "Type": "table"
        },
        {
            "Name": "databaseOwner",
            "Type": "database"
        }
    ],
    "QuestionList": [],
    "SequenceList": []
}
```
**Title** - The Title<br>
**Description** - A brief descrition to inform what information the file provides.<br>
**RunParser** - Identify if run the parser the values are "true" or "false", the default value for the Questions is "false".<br>
**Dbms** - List to identify the database, the values are "firebird", "oracle" and "sqlserver".<br>
**BeforeSql** - If you need to run a command before the query put the command here.<br>
**Sql** - The list of queries that will be performed on the database.<br>
**AfterSql** - If you need to run a command after the query put the command here.<br>
**Variables** - List of variables to be passed as parameters.<br>
**QuestionList** -  List of Questions that will be executed.<br>
**SequenceList** - List of Sequence files that will be executed.<br>

## Sequences
The Sequence file is used to create a list of Questions.<br>

Example:
```shell
{
   "Title": "DataBase Informations",
   "Description": "Extract all the dataBase informations",
   "DataBase": ["sqlserver"],
   "Questions": [
      "active_connections.json",
      "running_queries.json",
      "database_version.json"
   ]
}
```
Note that the Questions in the list must exist in the Questions folder.

## UserQuestions
The UserQuestion is the file created by the user contains the customized query.<br>
Uses the same Question model. 
