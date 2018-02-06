#!/usr/bin/env bash
echo "Updating the release version"
mvn -q build-helper:parse-version org.codehaus.mojo:versions-maven-plugin:2.1:set  -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.incrementalVersion}
MVN_ARTIFACT_ID=$(mvn -Dexec.executable='echo' -Dexec.args='${project.artifactId}' --non-recursive exec:exec -q) && echo $MVN_ARTIFACT_ID
MVN_VERSION=$(mvn -Dexec.executable='echo' -Dexec.args='${project.version}' --non-recursive exec:exec -q) && echo $MVN_VERSION

sed -ie "s|\(.*\)<tag>\(.*\)<\/tag>|\1<tag>${MVN_VERSION}<\/tag>|" pom.xml
cp -vf CHANGELOG.md /tmp
sed -i '/\[Unreleased\]/d' CHANGELOG.md

echo "git tag \"${MVN_ARTIFACT_ID}-${MVN_VERSION}\""
echo "mvn clean deploy -DcreateChecksum=true"
echo "git commit -am \"Releasing version ${MVN_ARTIFACT_ID}-${MVN_VERSION}\""
echo "git push"
echo "git push --tags"
read -p "Press enter to continue";
echo "Increment the version and put the HEAD tag back"
mvn -q build-helper:parse-version org.codehaus.mojo:versions-maven-plugin:2.1:set  -DnewVersion=\${parsedVersion.majorVersion}.\${parsedVersion.minorVersion}.\${parsedVersion.nextIncrementalVersion}-SNAPSHOT versions:commit
sed -ie "s|\(.*\)<tag>\(.*\)<\/tag>|\1<tag>HEAD<\/tag>|" pom.xml
cp -vf /tmp/CHANGELOG.md .
rm -rvf /tmp/CHANGELOG.md

echo "git commit -am \"Prepare for next release\""
echo "git push"

git clean -f
git reset --hard
