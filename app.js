const fs = require('fs');
const { promisify } = require('util');
const exec = promisify(require('child_process').exec);

exports.handler = async (event) => {
    console.log(`Current working directory: ${process.cwd()}`);
}
