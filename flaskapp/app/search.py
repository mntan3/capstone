def get_language( search_value ):
    for word in search_value.split():
        with open("./static/txt/languages.txt") as f:
            for line in f:
                if line.strip() == word.strip().lower():
                    return word.lower().strip()
    return None

def get_command( search_value ):
    for word in search_value.split():
        with open("./static/txt/commands.txt") as f:
            for line in f:
                if line.strip() == word.strip().lower():
                    return word.lower().strip()
    return None
