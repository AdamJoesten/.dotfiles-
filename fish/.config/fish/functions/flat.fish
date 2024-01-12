function flat --description 'Move files from source to destination without overwriting. Lists files that would be overwritten.'
    set -l SOURCE_DIR $argv[1]
    set -l DEST_DIR $argv[2]

    # Set DEST_DIR to current directory if not provided
    if test -z "$DEST_DIR"
        set DEST_DIR (pwd)
    end

    if test -z "$SOURCE_DIR"
        echo "Usage: flat [source_directory] [destination_directory]"
        return 1
    end

    set -l would_overwrite

    # Iterate over files in the source directory
    for file in (find $SOURCE_DIR -type f)
        set -l filename (basename $file)

        # Check if file already exists in destination
        if test -e "$DEST_DIR/$filename"
            set would_overwrite $would_overwrite $filename
            continue
        end

        # Move file to destination
        mv $file $DEST_DIR
    end

    # Display list of files that would be overwritten
    if count $would_overwrite >/dev/null
        echo "The following files in your source_directory have name conflicts in the destination_directory and were not moved:"
        for file in $would_overwrite
            echo $file
        end
        return 1
    end

    # Optionally, remove the source directory
    rm -r $SOURCE_DIR
end
