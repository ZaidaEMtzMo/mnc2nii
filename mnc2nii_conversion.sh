# Conversion of MNC.GZ files to NII files

#!/bin/bash

#Input the location of the source folder and the final folder

SourcePath=/$WRITE$HERE$THE$PATH$WHERE$MNC.GZ$FILES$ARE

FinalPath=/$WRITE$HERE$YOUR$DESTINATION$FOLDER$PATH

list=`ls $SourcePath`

for name in $list
do 
    gzip -dk $SourcePath$name
done

echo Unzipping done

list2=`ls $SourcePath*.mnc`

for name2 in $list2
do
    mnc2nii $name2 $name2.nii
    newname=`cut -d'.' -f1 <<< $name2`
    mv $name2.nii $newname.nii
    mv $newname.nii $FinalPath
done

echo All files are ready in the specified folder.
