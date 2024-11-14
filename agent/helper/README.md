# Logging code snnipets

- Copy the helper methods to write logs following our JSON format. Helper methods for pyt$
- In order to standardise logs, use one of the 4 logging levels:
>> 1. ERROR, if logging an error of the system operation
>> 2. DEBUG, if logging system operation for debugging purposes
>> 3. WARNING, if logging aspects of apps evaluation that have failed (e.g. An app cannot be e$
>> 4. INFO, if logging any aspects of apps evaluation (e.g. starting app evaluation, library o$
- When logging exception (ERROR), it is recommended to concatenate the message and the error & stack-trace provided by the program.
- When logging WARNING AND INFO, the app name MUST be provided

## Python

Copy the code snipped from log.py to your python file and use it as follows:

```
logger = init_logger(file_to_save_logs)
logger.info(message_to_log)
logger.warning(message_to_log)
logger.error(message_to_log)
loger.debug(message_to_log)
```
## GoLang

Copy the code snipped from log.go to your golang file, set the LOG_FILE constant, and use it as follows:

```
log.Warn(message_to_log)
log.Error(message_to_log)
log.Info(message_to_log)
```

## Bash/sh

Call the script log.sh as follows:

```
sh log.sh <I|D|W|E> <message_to_log> <file_involved> <file_to_save_logs>

I:inform, D:Debug, W: Warning, E:Error

```
