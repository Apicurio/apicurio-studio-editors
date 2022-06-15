const cwd = process.cwd();
const fs = require("fs");

const fedModsJson = {
    "note": "This file exists only because the MAS build pipeline will fail without it due to a line of code in the push_to_insights.sh script.  We could fix the script and remove this file.",
    "$ref": "https://gitlab.cee.redhat.com/mk-ci-cd/mk-ci-tools/-/blob/master/script/push_to_insights.sh#L136"
};

const fedModsJsonFile = `${cwd}/dist/editors/fed-mods.json`;

const fedModsJsonFileContent = JSON.stringify(fedModsJson);

fs.writeFileSync(fedModsJsonFile, fedModsJsonFileContent);
