#!/usr/bin/env bash
set -e

docker build -t "$IMAGE_SPEC" --build-arg PYTHON_VERSION=$PYTHON_VERSION --build-arg CONDA_VERSION=$CONDA_VERSION --file "./docker-images/conda.dockerfile" "./docker-images/"
pytest tests
