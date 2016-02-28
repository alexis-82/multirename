#!/bin/bash

# PASTE permette di unire due file riga per riga
# IFS è una variabile interna di bash dove contiente l'elenco dei caratteri
# in questo caso la lettura delle due liste, old e new saranno all'interno di IFS

paste oldlist newlist | while IFS=$'\t' read -r oldlist newlist; do 
  mv -i -- "$oldlist" "$newlist"
done

