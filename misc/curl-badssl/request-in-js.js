const https = require('node:https');

function execute(url) {
    console.log('GET from JS code:', url);

    return new Promise((resolve, reject) => {
        https
            .get(url, response => {
                console.log('statusCode:', response.statusCode);
                console.log('headers:', response.headers);

                response.on('data', data => {
                    process.stdout.write(data);
                    resolve(data);
                });
            })
            .on('error', err => {
                console.error(err);
                reject(err);
            });
    });
}

execute('https://self-signed.badssl.com/').then(() => {
    return execute('https://untrusted-root.badssl.com/');
}).catch(() => { process.exit(1); });
