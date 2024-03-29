#FROM docker.io/library/ubuntu:latest
# try to help snyk analysis
FROM ubuntu:23.10

RUN echo "Hello world"

# Below is how you set the image attribution; this replaces the old AUTHOR directive

# date and time on which the artifact was built, conforming to RFC 3339.
# This is made by the builder
#LABEL org.opencontainers.artifact.created '2023-03-22T21:41:44.399Z'
# human readable description for the artifact (string)
LABEL org.opencontainers.artifact.description 'Demonstration of automatically versioned docker image built with github actions CI with multiarch support'
# date and time on which the image was built, conforming to RFC 3339.
# This is made by the builder
#LABEL org.opencontainers.image.created '2023-03-22T21:41:44.399Z'
# contact details of the people or organization responsible for the image (freeform string)
LABEL org.opencontainers.image.authors 'Gene Erik <geneerik@fossdevops.com>'
# URL to find more information on the image (string)
LABEL org.opencontainers.image.url 'https://github.com/geneerik/docker-version-demo'
# URL to get documentation on the image (string)
LABEL org.opencontainers.image.documentation 'https://github.com/geneerik/docker-version-demo'
# URL to get source code for building the image (string)
LABEL org.opencontainers.image.source 'https://github.com/geneerik/docker-version-demo.git'
# version of the packaged software
# The version MAY match a label or tag in the source code repository
# version MAY be Semantic versioning-compatible
# Set by the builder
# LABEL org.opencontainers.image.version 'main'
# Source control revision identifier for the packaged software.
# Set by the builder
#LABEL org.opencontainers.image.revision '867543254567843'
# Name of the distributing entity, organization or individual.
LABEL org.opencontainers.image.vendor 'FOSSDevOps'
# License(s) under which contained software is distributed as an SPDX License Expression.
LABEL org.opencontainers.image.licenses 'MIT-0'
# Name of the reference for a target (string).
# SHOULD only be considered valid when on descriptors on index.json within image layout.
# Character set of the value SHOULD conform to alphanum of A-Za-z0-9 and separator set of -._:@/+
# The reference must match the following grammar:
# ref       ::= component ("/" component)*
# component ::= alphanum (separator alphanum)*
# alphanum  ::= [A-Za-z0-9]+
# separator ::= [-._:@+] | "--"
# set by the builder
# LABEL org.opencontainers.image.ref.name 'refs/heads/main'
# Human-readable title of the image (string)
LABEL org.opencontainers.image.title 'GeneErik Docker Versioning Demo'
# Human-readable description of the software packaged in the image (string)
LABEL org.opencontainers.image.description 'Demonstration of automatically versioned docker image built with github actions CI with multiarch support'
# Digest of the image this image is based on (string)
# This SHOULD be the immediate image sharing zero-indexed layers with the image, such as from a Dockerfile FROM statement.
# This SHOULD NOT reference any other images used to generate the contents of the image (e.g., multi-stage Dockerfile builds).
# Note: this was captured on original image creation; it WILL change
LABEL org.opencontainers.image.base.digest 'sha256:67211c14fa74f070d27cc59d69a7fa9aeff8e28ea118ef3babc295a0428a6d21'
# Image reference of the image this image is based on (string)
# This SHOULD be image references in the format defined by distribution/distribution.
# This SHOULD be a fully qualified reference name, without any assumed default registry. (e.g., registry.example.com/my-org/my-image:tag instead of my-org/my-image:tag).
# This SHOULD be the immediate image sharing zero-indexed layers with the image, such as from a Dockerfile FROM statement.
# This SHOULD NOT reference any other images used to generate the contents of the image (e.g., multi-stage Dockerfile builds).
# If the image.base.name annotation is specified, the image.base.digest annotation SHOULD be the digest of the manifest referenced by the image.ref.name annotation.
LABEL org.opencontainers.image.base.name 'docker.io/library/ubuntu:latest'

ARG VERSION=unset
ARG LONG_FORM_VERSION=unset

RUN (printf 'GeneErik Docker Versioning Demo' > /etc/opencontainers_image_title) && \
    (printf '%s' "${VERSION}" > /etc/opencontainers_image_version) && \
    (printf '%s' "${LONG_FORM_VERSION}" > /etc/opencontainers_image_version_long)
