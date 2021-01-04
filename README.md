# Schema definition for Romanian Old Cyrillic Corpus annotations #

## Repository structure ##

- `Dockerfile` is the file used to setup a `Docker` image for generating the schema files (.xsd and .rng) from the RelaxNG compact syntax definition file (.rnc).
- `docs` is the directory containing the documentation of the schema. This is where content for GitHub pages is served.
- `rocc.rnc` contains the definition of the `ROCC` schema using RelaxNG compact syntax.
- `rocc.rng` contains the definition of the `ROCC` schema in the RelaxNG syntax. This file is generated from `rocc.rnc`.
- `rocc.xml` is a sample (dummy) XML file that contains a scheleton of how a file in `ROCC` format may look like. It validates against schema files.
- `rocc.xsd` contains the definition of the `ROCC` schema in the XSD format. This file is generated from `rocc.rnc`.

## Docker image ##

In order to generate schema files in the XSD and RelaxNG format from the compact syntax schema definition (`rocc.rnc`) you will need to use [`trang`](https://relaxng.org/jclark/trang.html) utility. To avoid polluting your workstation this can be done using a Docker container.

The [`Dockerfile`](./Dockerfile) creates a Docker image based on Ubuntu 20.04, installs `OpenJdk` on it and builds the `jing` and `trang` utilities used for validating a file against a schema and respectively, generating XSD and RelaxNG schemas from the compact syntax schema.

To build the image, navigate to the directory containing the `Dockerfile` and run the following command:

```sh
docker build -t rocc .
```

### Converting schemas ###
To convert from RelaxNG compact syntax (`.rnc`) to RelaxNG syntax (`.rng`) run:
```sh
docker run --rm -v <path-to-this-repo>:/work rocc -jar /opt/jing-trang/trang.jar -I rnc -O rng /work/rocc.rnc /work/rocc.rng
```

To convert from RelaxNG compact syntax (`.rnc`) to XSD (`.xsd`) run:
```sh
docker run --rm -v <path-to-this-repo>:/work rocc -jar /opt/jing-trang/trang.jar -I rnc -O xsd /work/rocc.rnc /work/rocc.xsd
```

Make sure to replace `<path-to-this-repo>` with the path where the repository resides.

The commands above will spin a Docker container from the image named `rocc`, will mount the curent repository (located at `<path-to-this-repo>`) inside the `/work` directory in the container, and will generate the output schema in the desired format by calling the `trang` utility.

## Validating a xml file against the ROCC schema ##

To validate a file against `ROCC` schema use one of the following commands:
- `xmllint --noout --schema rocc.xsd <your-file>.xml`, where `<your-file>.xml` represents the file you want to test; requires the `xmllint` utility; tested on Ubuntu 20.04.
- `xmllint --noout --relaxng rocc.rng <your-file>.xml` - as above; the testing is done against the schema in RelaxNG format.
- `docker run --rm -v <path-to-this-repo>:/work rocc -jar /opt/jing-trang/jing.jar /work/rocc.rng /work/<your-file>.xml`. This command will:
  - spin a Docker container from the image named `rocc` built in the previous section,
  - mount the directory at `<path-to-this-repo>` inside the `/work` directory of the container,
  - validate `<your-file>.xml` (from the `<path-to-this-repo>` directory) agains the `rocc.rng` file from this repository.
