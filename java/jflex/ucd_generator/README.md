# UCD Parser

This program parses the fileset of a Unicode Character Definition,
and generates a `UnicodeProperties_X_Y` java class.

This is the replacement of `jflex-unicode-maven-plugin` for Bazel.

## Where are the Unicode.org resources defined

Each unicode version is defined as a filegroup in
[`//third_party/unicode`](../../../third_party/unicode).

Bazel is responsible for fetching (using mirrors) and caching the remote resources.

The generated `UnicodeProperties.java` is build by

    bazel build //java/jflex/ucd_generator:gen_unicode_properties

### Building for a reduced set of properties

The UnicodeData.txt and DerivedAge.txt must be provided.
The other data files should be provided.
The files must be accessible from the sandbox, e.g. in `/tmp`

    bazel run java/jflex/ucd_generator:Main -- --version=5.0.0 $(ls /tmp/ucd_5_0_0/*.txt  /tmp/ucd_5_0_0/auxiliary/*.txt)  --out=/tmp/ucd5_java
    
## Software architecture.

* `Main` is only responsible for parsing the cli arguments
  and generating `UcdVersions`
* The model `UcdVersions` is a map of version → File for each type
* The types are defined in a simple enum `UcdFileType`
* `UcdGenerator` generates _UnicodeProperties.java_ using velocity
