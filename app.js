const fs = require('fs');
const { promisify } = require('util');
const exec = promisify(require('child_process').exec);

exports.handler = async (event) => {
    console.log(`Current working directory: ${process.cwd()}`)

    const { stdout, stderr } = await exec('npm run monitor-test');
    if (stderr) {
        console.error(`npm command stderr: ${stderr}`);
    }
    console.log(`npm command stdout: ${stdout}`);
          return {
            statusCode: 200,
            body: JSON.stringify({
                message: 'Success'
            })
        };
}
