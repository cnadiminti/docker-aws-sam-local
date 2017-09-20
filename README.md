
# docker-aws-sam-local

This is the source repository of the [Docker image](https://hub.docker.com/r/cnadiminti/aws-sam-local/) for [Amazon AWS SAM Local](https://github.com/awslabs/aws-sam-local).

## Supported tags and respective `Dockerfile` links

-	[`latest` (*latest/Dockerfile*)](https://github.com/cnadiminti/docker-aws-sam-local/blob/master/Dockerfile)
- [`0.2.2` (*0.2.2/Dockerfile*)](https://github.com/cnadiminti/docker-aws-sam-local/blob/master/Dockerfile)


## What is AWS SAM Local?

[Amazon AWS SAM Local](https://github.com/awslabs/aws-sam-local) is a tool for local development and testing of Serverless applications. It can be used to test functions locally, start a local API Gateway from a SAM template, validate a SAM template, and generate sample payloads for various event sources.

## How to use this image?

### Start a DynamoDB Local instance

```console
$ docker run -it --rm \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v "$(PWD)":/var/opt \
	-p "3000:3000" \
	cnadiminti/aws-sam-local


```

This will add your current directory as a volume to the container and publish host port to container port.

For a working example please take a look at the [Makefile](https://github.com/cnadiminti/docker-aws-sam-local/blob/master/Makefile) in the source repository.

## License

- [Amazon AWS SAM Local License Agreement](https://github.com/awslabs/aws-sam-local/blob/develop/LICENSE)


## User Feedback

### Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/cnadiminti/docker-aws-sam-local/issues).

### Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/cnadiminti/docker-aws-sam-local/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
