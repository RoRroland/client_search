# ClientSearch

ClientSearch is a simple code for parsing a clients data from a file with search capabilty for partial or full name and showing of duplicate email if there are.

NOTE: Later on it can extend to process other file type like csv, pdf, text file.

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

Searching for Partial or Full Name:
```
full_name = 'Mich'
result = ClientSearch.process(path:).parse(params: { full_name: }).names
```
```
[
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

```

Showing for duplicate email:
```
[
  "jane.smith@example.com"
]
```
Using in a Ruby File:
1. Add this to your code:
  ```
  require_relative 'lib/client_search.rb'
  ```
2. Make ruby file executable
  ```
  chmod +x bin/client_search_runner.rb
  ```
3. Execute the file:
```
./bin/client_search_runner.rb
```

## License

See [LICENSE](LICENSE) for details.
