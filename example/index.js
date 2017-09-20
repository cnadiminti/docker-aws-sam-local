'use strict';

// A simple hello world Lambda function
exports.handler = (event, context, callback) => {

    console.log('LOG: Received an event' );

    callback(null, {
        statusCode: 200,
        body: "Hello, World!"
    })

}
