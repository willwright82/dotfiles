gitvanity ()
{
    local code="$1" url="$2";
    echo 'creating vanity GitHub URL... ';
    ghurl=$(curl -s -i http://git.io -F "url=$url" -F "code=$code"           | grep Location           | awk '{print $2}');
    echo $ghurl | pbcopy;
    echo "copied to clipboard: ${ghurl}"
}
