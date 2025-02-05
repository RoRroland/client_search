# ClientSearch

ClientSearch is a simple code for parsing a clients data from a file with search capabilty for partial or full name and showing of duplicate email if there are.

NOTE: This is built using gem pattern but this is not uploaded to rubygems yet. Please check the installation and usage below when using this service.

## Prerequisites

## Installation

1. clone from source:
```
git clone git://github.com/rolandoalvarado/client_search.git
```
2. make sure the setup file is executable.
```
chmod +x bin/setup
```
3. Install Dependencies:
```
bin/setup
```

## Usage

1. make sure the client search runner is executable.
```
chmod +x bin/client_search_runner
```
2. Execute the client_search_runner.
```
./bin/client_search_runner
```
```
Do you want to search for clients by Name? (yes/no)
yes
Enter Partial or Full Name to search for clients:
mich
Result : [
  {
    "id": 4,
    "full_name": "Michael Williams",
    "email": "michael.williams@outlook.com"
  },
  {
    "id": 10,
    "full_name": "Michael Brown",
    "email": "michael.brown@inbox.com"
  }
]
--- Application is terminated! Thank you for using the service. ---
```
3. Showing of duplicate email(s).
```
Do you want to search for clients by Name? (yes/no)
no
Do you want to check for duplicate email?
yes
Email that has duplicate : [
  "jane.smith@yahoo.com"
]
```

Running the test:
```
rake test
```

Check for syntax error:
```
bundle exec rubocop
```

## License

See [LICENSE](LICENSE) for details.
