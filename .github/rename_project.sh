#!/usr/bin/env bash
while getopts a:n:u:d: flag
do
    case "${flag}" in
        a) author=${OPTARG};;
        n) display_name=${OPTARG};;
        u) urlname=${OPTARG};;
        d) description=${OPTARG};;
    esac
done

code_name="$(echo "$display_name" | sed -r 's/.*/\L&/;s/(^| )([a-z])/\U\2/g')"
mod_id="$(echo "${author}.${code_name}" | sed -r 's/.*/\L&/')"

echo "Author: $author";
echo "Display Name: $display_name";
echo "Description: $description";
echo "Code Name: $code_name";
echo "Mod ID: $mod_id";

echo "Renaming project..."

original_author="Author"
original_code_name="TestMod"
original_mod_id="author.testmod"
original_display_name="Test Mod"
original_description="Put a neat description here"

for filename in $(git ls-files)
do
    if [[ "$filename" != lib/* && "$filename" != .github/* ]]
    then
        sed -i "s/$original_author/$author/g" $filename
        sed -i "s/$original_code_name/$code_name/g" $filename
        sed -i "s/$original_mod_id/$mod_id/g" $filename
        sed -i "s/$original_display_name/$display_name/g" $filename
        sed -i "s/$original_description/$description/g" $filename
        #sed -i "s/    /	/g" $filename
        echo "Renamed $filename"
    fi
done

mv src/TestMod.csproj "src/${code_name}.csproj"

# This command runs only once on GHA!
rm -r .github/
