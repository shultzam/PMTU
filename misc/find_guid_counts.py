# Standard imports.
from collections import Counter
import sys

def extract_unique_words(path: str):
    ''' This function returns a dict of count of each unique 'word' found in the file supplied. '''

    # Read the file into memory.
    text = ''
    with open(path, 'r') as file:
        text = file.read().replace('\n', ' ').replace('}', '').replace('{', '').replace(',', ' , ').replace('"', '').replace("'", '')

    # Count the words.
    words_dict = Counter(text.split())

    # Remove any keys we do not care about.
    keys_to_delete = []
    for key, _ in words_dict.items():
        # Remove any key that is not an integer.
        try:
            int(key.strip(), 16)
        except ValueError:
            keys_to_delete.append(key)
            continue
        # Remove any key that is not 6 digits in length.
        if len(key) != 6:
            keys_to_delete.append(key)
            continue

    words_dict = {key: value for key, value in words_dict.items() if key not in keys_to_delete}

    return words_dict


if __name__ == '__main__':
    result = extract_unique_words(path='./src/Global.lua')
    for key, value in result.items():
        if value > 2:
            print('UUID {} appears {} times !!'.format(key, value))
