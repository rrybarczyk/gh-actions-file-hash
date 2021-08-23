file.h is created by build-header.h

new PR does not modify file.h
checks:
1. hash file.h in PR and store
2. execute build-header.sh in github actions
3. take hash of newly created file.h from the build-header.sh github actions execution and store
4. compare the hashes
