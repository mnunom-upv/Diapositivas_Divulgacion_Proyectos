import bibtexparser

f = open("Todos.bib")
bib_data= f.read()


# Parse the BibTeX string
library = bibtexparser.parse_string(bib_data)

# Access individual entries

#for entry in library.entries:
for i, entry in enumerate (library.entries):
#    print(f"Citation ID: {entry.get('ID')}")
#    print(f"Entry Type:  {entry.get('entry_type')}")
    print("Index",i+1)  # Citation key
    print(f"Key: {entry.key}")  # Citation key
    print(f"Type: {entry.entry_type}")  # e.g., article, book

    # Fields dict mapping field name to value
    fields_dict = entry.fields_dict
    title = fields_dict.get("title").value if "title" in fields_dict else None
    year = fields_dict.get("year").value if "year" in fields_dict else None


    print(f"Title: {title}")
    print(f"Year: {year}")
    print("-" * 30)

print ("TotalArticulos",len(library.entries))
