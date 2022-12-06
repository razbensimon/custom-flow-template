const https = require('node:https');

function execute(url) {
    console.log('GET from JS code:', url);

    return new Promise((res, rej) => {
        https
            .get(url, res => {
                console.log('statusCode:', res.statusCode);
                console.log('headers:', res.headers);

                res.on('data', data => {
                    process.stdout.write(data);
                    res(data);
                });
            })
            .on('error', err => {
                console.error(err);
                rej(err);
            });
    });
}

execute('https://self-signed.badssl.com/').then(() => {
    return execute('https://untrusted-root.badssl.com/');
}).catch(() => { process.exit(1); });
