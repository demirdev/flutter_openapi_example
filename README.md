# flutter_openapi_example


## Getting Started

flutter create flutter_openapi_example

cd flutter_openapi_example

wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/7.1.0/openapi-generator-cli-7.1.0.jar -O openapi-generator-cli.jar

wget https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/examples/v2.0/json/petstore.json 

java -jar openapi-generator-cli.jar generate -i petstore.yaml -g dart-dio -o api

add this to pubspec.yaml :
dependencies:
    openapi:
    path: ./api

cd api
dart run build_runner build

