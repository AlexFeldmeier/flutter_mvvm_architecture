# flutter_mvvm_architecture

Project to demonstrate the basics of my preferred architecture for Flutter projects

## Layers
Presentation -> ViewModel -> Repository -> DataSource

### Presentation
Contain screens and widgets

### ViewModel
Contains current state information in memory from repositories to be retrieved from the
presentation layer

### Repository
Responsible for retrieving the data and handling errors gracefully

### DataSource
Optional layer that can be used in cases such as when a repository has both remote and local
cache that it can pull data from and write to
