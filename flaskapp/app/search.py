

def get_language( search_value ):
    with open("./static/txt/languages.txt") as f:
        for line in f:
            if line.strip().lower() in search_value.strip().lower() :
                return line.lower().strip()
        return None

def get_command( search_value ):
    with open("./static/txt/commands.txt") as f:
        for line in f:
            if line.strip().lower() in search_value.strip().lower():
                return line.lower().strip()
        return None

