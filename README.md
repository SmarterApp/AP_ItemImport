# AP_ItemImport
Import items into an item bank.


# Assessment Production - Item Import - ap-item-import
Command line application for migrating items. 

## Technologies

* Spring Boot
* Spring Dev Tools 
* Gradle

Installing Gradle separately is not required.  It is recommended
to use the Gradle Wrapper.

## Build Commands

Build: ```./gradlew clean build```
  
Build skip tests: ```./gradlew clean build -x test```

Run: ```./gradlew bootRun```
  
### Developer

Developers should use the alias ```gw``` as it starts the Gradle daemon
and is easy to type.

Build: ```./gw clean build```

Build skip tests: ```./gw clean build -x test```

Run: ```./gw bootRun```

## IAT/TIMS Dependencies
Import needs the following TIMS applications running to work properly.

* [Item Bank Sync Application](https://github.com/SmarterApp/AP_ItemBankSyncService)
* [Item Managment Service](https://github.com/SmarterApp/AP_ItemManagementService)

The two applications need to point to the same environment as the import.  For example, if you are running item import against the development environment you'll want ot make sure item bank sync and item management service are also pointing at development.

## Import Directories
The import application looks for items to import in directories on your file system.  These are driven by the environment variables (in your `.bash_profile`).  The following directories are used:

* `IAT_IMPORT_LOCAL_BASE_DIR` - This is the directory used by the import application to stage items to import.
* `IAT_IMPORT_ITEM_DIR` - the directory containing the items to import excluding stimuli.
* `IAT_IMPORT_WORDLIST_DIR` - the directory containing the wordlists to import
* `IAT_IMPORT_STIMULI_DIR` - the directory containing the stimuli to import
  
## application.yml

Spring Boot applications utilize the file ```application.yml```.  It defines
the configuration for the application.

The classpath ```application.yml``` located at ```src/main/resources``` defines
static configuration that is constant across all environments.
 
Located in the application root is ```application.yml```.  It defines the configuration
for *development only*.  This file is automatically picked up by Spring Boot
when the application is executed from the root of the project.  This file is not 
included in the built JAR.

**IDE** 

Intellij is the recommended IDE.  Spring Tool Suite is another option as it
has great support for Spring Boot applications.

Keep in mind with Intellij you will need to set the 'Working Directory' in the run configuration
to the root of the project so the development ```application.yml``` is picked up.


