brew install nvm

nvm install 0.12
nvm use 0.12
nvm alias default 0.12

# Globally install with npm

packages=(
    grunt
    gulp
    http-server
    how2
    nodemon
    ntl
    spot
    vtop
    node-tweet-cli
    fast-cli
    eslint
    babel-eslint
    eslint-plugin-react
)

npm install -g "${packages[@]}"
