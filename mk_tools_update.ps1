create_env;

cd $Env:ROOT_MK_TOOLS
git init
git clean -df
git reset --hard
git pull

echo "Update done"