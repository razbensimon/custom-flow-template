const https = require('node:https');

function execute(url) {
    console.log('GET from JS code:', url);

    https
        .get(url, res => {
            console.log('statusCode:', res.statusCode);
            console.log('headers:', res.headers);

            res.on('data', data => {
                process.stdout.write(data);
            });
        })
        .on('error', e => {
            console.error(e);
            process.exit(1);
        });
}

execute('https://self-signed.badssl.com/');
execute('https://untrusted-root.badssl.com/');