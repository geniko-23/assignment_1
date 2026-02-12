if [ $# -ne 1 ]; then
    echo "Usage: $0 'relative_file_path'"
    exit 1
else
    relative_file_path="$1"
fi

characters=$(wc -m < "$relative_file_path")
words=$(wc -w < "$relative_file_path")
lines=$(wc -l < "$relative_file_path")

echo "The file $relative_file_path contains $characters characters, $words words and $lines lines"
