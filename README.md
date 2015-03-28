# Scrath Framework
### Version 3

Right now is just a 12 custumizable column Grid. You can build the SASS code with Ruby or NodeJS(Instructions bellow) - For further versions I'll increment with different Modules for fast Prototing just using what you need to use.

**This project is being used for knowledge purposes**

# Build the Framework
You're free to choose: Ruby or NodeJS.

## Using Ruby
#### Dependencies
* Sass
* Webrick

To install the dependencies:
```bash
$ gem install sass webrick
```

To build the framework:
```bash
$ ruby build.rb
```

## Settings
The settings are placed on file: **config.yaml**. You can set the folder and the Port of the WebServer.

```yaml
settings:
  folder: 'build'
  serverPort: '3000'
```

## Webserver
After the Webserver(Webrick) will start watch the folder Build. There's an index.html file for tests

To access just **localhost:8000**
