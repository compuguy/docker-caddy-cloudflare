#!/bin/bash

docker build . -t public.ecr.aws/compuguy/caddy-cloudflare:2.9-alpine -t public.ecr.aws/compuguy/caddy-cloudflare:latest -t public.ecr.aws/compuguy/caddy-cloudflare:2-alpine
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/compuguy
docker push public.ecr.aws/compuguy/caddy-cloudflare:2-alpine
docker push public.ecr.aws/compuguy/caddy-cloudflare:2.9-alpine
docker push public.ecr.aws/compuguy/caddy-cloudflare:latest