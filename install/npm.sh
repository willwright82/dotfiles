brew install nvm

nvm install 0.12
nvm use 0.12
nvm alias default 0.12

# Globally install with npm

packages=(
    babel-eslint
    bower
    coffee-script
    devtools-terminal
    emoj
    emojipacks
    eslint
    eslint-config-airbnb
    eslint-plugin-react
    fast-cli
    feathers-cli
    git-fire
    git-watcher
    grunt
    gtop
    gulp
    how2
    http-server
    imageoptim-cli
    js-beautify
    jsonresume-theme-stackoverflow
    lighthouse
    mediumcli
    ngrok
    node-tweet-cli
    nodemon
    npm
    ntl
    phunt
    prettier
    quickscrape
    resume-cli
    slack-cli
    spot
    tern
    vtop
)

npm install -g "${packages[@]}"
