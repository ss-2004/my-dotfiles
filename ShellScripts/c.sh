GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

if ls *.c 1> /dev/null 2>&1; then
    for source_file in *.c; do
        filename_without_extension=$(basename -- "$source_file" .c)
        gcc -o "$filename_without_extension" "$source_file"
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}Compilation $source_file successful!${NC}"
        else
            echo -e "${RED}Compilation $source_file failed!${NC}"
        fi
    done
else
    echo -e "${RED}C files not found!${NC}"
fi
