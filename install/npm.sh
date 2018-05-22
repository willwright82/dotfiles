brew install nvm

nvm install 0.12
nvm use 0.12
nvm alias default 0.12

# Globally install with npm

packages=(
    babel-eslint
    bower
    browser-sync
    browserify
    coffee-script
    create-react-app
    create-react-native-app
    devtools-terminal
    emoj
    emojipacks
    eslint
    eslint-config-airbnb
    eslint-plugin-react
    exp
    fast-cli
    feathers-cli
    fkill-cli
    git-fire
    git-standup
    git-watcher
    grunt
    gtop
    gulp
    how2
    http-server
    imageoptim-cli
    js-beautify
    jsonresume-theme-stackoverflow
    learnyounode
    lighthouse
    mediumcli
    ngrok
    node-fetch
    node-tweet-cli
    nodemon
    npm
    ntl
    phunt
    prettier
    quickscrape
    react-devtools
    react-native
    react-native-cli
    resume-cli
    serve
    slack-cli
    spot
    tern
    vtop
    yarn
)

npm install -g "${packages[@]}"
