"""
Para agregar un Demo NUEVO:
1) Agregar su respectiva entrada en el archivo Todos.bib
2) Crear su carpeta inicnando con los 4 digitos del año seguido del nombre corto del proyecto
3) En el interior utilizar

\\renewcommand{\\Folder}{2025_SkinReplacement}
\\renewcommand{\\EntradaBibtex}{2025_SkinReplacement}
\\begin{frame}{\\citetitle{\\EntradaBibtex} \\footnotemark[1] (1)}


% Para agregar los datos del proyecto a la primera hoja de la diapositiva
\\footnotetext[1]{\\fullcite{\\EntradaBibtex}}


% Para Incluir Figuras:
\\includegraphics[width=0.98\\textwidth]{\\Folder/figs/ejemplo_mascara_piel}


4) Actualizar el archivo 
https://docs.google.com/spreadsheets/d/1qKoekj96OnIbq9lVfIBko2xXyEP98Ztdulqx-_YbUZc/edit?gid=1789137609#gid=1789137609

== La cantidad de demos debe CUADRAR tanto en el listado del README como en la hoja de calculo

"""



import re
from pathlib import Path
from pybtex.database import parse_file
from pybtex.database import parse_file
from datetime import datetime

def locate_bib_entry(file_path, citation_key):
    """
    Searches for a BibTeX entry by its citation key and returns the full block.
    """
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # Regex breakdown:
    # @\w+\s*\{\s*   -> Matches @entry_type{
    # re.escape(key) -> Matches your specific citation key
    # \s*,           -> Matches the comma after the key
    # (.*?)          -> Lazily captures everything inside until...
    # \n\s*\}\s*\n   -> A closing bracket on its own line (standard BibTeX ending)
    # Alternatively, using a balanced brace matching regex for robustness:
    pattern = rf"(@\w+\s*{{\s*{re.escape(citation_key)}\s*,.*?^}})"
    
    match = re.search(pattern, content, re.DOTALL | re.MULTILINE)
    
    if match:
        return match.group(1)
    return None


path = Path('.')
folders = [f.name for f in path.iterdir() if f.is_dir()]

L=[]
for f in folders:
#    print (f)
    if re.match(r"^\d{4}", f):
        #print("Starts with four digits",f)  
        L.append(f)


ConteoMatchCorrectos=0
LBibEntry=[None] * len(L)
L=sorted(L,reverse=True)
for index, f in enumerate(L):
    #print (f)
    for file in Path(f).rglob("*"):
        if file.is_file() and ".tex" in file.name:
            #print ("\t\t Tex FILE:",file)
            #if search_string in file.read_text(encoding="utf-8"):
            #    print ("found")

            search_string="\\renewcommand{\\EntradaBibtex}{"
            Found=False
            with open(file, "r", encoding="utf-8") as f:
                for line_number, line in enumerate(f, start=1):
                    if search_string in line:
                        #print(f"\t\t\t{file}:{line_number}: {line.strip()}")
                        res=line.strip()
                        resf=res.replace(search_string,"")
                        resf2=resf.replace("}","")                            
                        #print ("\t\t\t Bibtex Entry",resf2)
                        LBibEntry[index]=resf2
    
                        Found=True
                        ConteoMatchCorrectos+=1

        #if file.is_file():

print("# Dr. Marco Aurelio Nuño Maganda")
print("# Listado de Proyectos de Investigación y Desarrollo Tecnológico ")
print("# Codigo Fuente de Diapositivas Latex para Divulgación de la Ciencia y la Tecnología")
print("# Ultima Actualizacion: ",datetime.now().strftime("%Y-%m-%d %H:%M:%S"))

BibFinal=""
LS=L
TotalDemos=len(L)
#print ("| Folder ","| Bibtex Entry Key ","| Title ","| Year ")
print ("|#| Title ","| Year ","| Folder ","| Bibtex Entry Key |")
print ("| ----- | -----  | -----  | -----  | ----- | ")
for index, e in enumerate (LBibEntry):
    #entry = locate_bib_entry("Todos.bib", e)
#    print ("| Folder: ",LS[index])
#    print ("| Bibtex Entry Key: ", e)
    bib_data = parse_file("Todos.bib")
    if e in bib_data.entries:
        entry = bib_data.entries[e]
        
        # 3. Read specific attributes
        #print(f"Type: {entry.type}")
        Titulo=entry.fields.get('title')
        Year=entry.fields.get('year')

        Titulo=Titulo.replace("\\textit{","")
        Titulo=Titulo.replace("{","")
        Titulo=Titulo.replace("}","")
#        print(f"| Title: ",Titulo)
#        print(f"| Year: ",Year)
#        print(f"|")
        #print ("| Folder: ",LS[index],"| Bibtex Entry Key: ", e,"| Title: ",Titulo,"| Year: ",Year)
        print ("| ",TotalDemos,"| ",Titulo, "| ",Year," | ",LS[index],"| ",e,"| ")
        #print ("| ",index+1,"| ",Titulo, "| ",Year," | ",LS[index],"| ",e,"| ")
        TotalDemos-=1


        #print(f"Year: {entry.fields.get('year')}")
        #print(f"Campos: {entry.fields}")
        #print(f"Autores(Personas): {entry.persons}")

    
    #print (entry)
    #print ("%-----------------------------------------------------------------------------------------------------------------")
    #BibFinal+=entry+"\n"

#print (BibFinal)



# 'w' stands for write mode
#with open("TodosFin.bib", "w") as file:
#    file.write(BibFinal)
