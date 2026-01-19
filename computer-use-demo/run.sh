export AWS_PROFILE=CLAUDE_COMPUTER_USE
docker run \
    -e API_PROVIDER=bedrock \
    -e AWS_PROFILE=$AWS_PROFILE \
    -e AWS_REGION=us-east-1 \
    -e MODEL=us.anthropic.claude-sonnet-4-5-20250929-v1:0 \
    -v $HOME/.aws:/home/computeruse/.aws \
    -v $HOME/.anthropic:/home/computeruse/.anthropic \
    -v $(pwd)/computer_use_demo:/home/computeruse/computer_use_demo \
    -p 5900:5900 \
    -p 8501:8501 \
    -p 6080:6080 \
    -p 8080:8080 \
    -e WIDTH=1024 \
    -e HEIGHT=768 \
    -it computer-use-demo:local # ghcr.io/anthropics/anthropic-quickstarts:computer-use-demo-latest
