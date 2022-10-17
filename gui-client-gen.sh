for i in $(ls -d */);
do {
    DIRECTORY=${i%%};
    YAML=$(echo $DIRECTORY | sed 's/.$//' )
    if [[ $YAML == "_all" ]]; then  continue; fi
    echo npx openapi-generator-cli generate -g typescript-fetch -i ./$YAML/$YAML.yaml -o ../src/gen
    npx openapi-generator-cli generate -g typescript-fetch -i ./$YAML/$YAML.yaml -o ../src/gen/$YAML
}
done