# mnc2nii
Conversion fMRI files: MNC.GZ to NII to proceed with the analysis of fMRI data.

## How to use this script?

This script should be run in a shell terminal. In Ubuntu or Mac, it should work in the common terminal. In Windows, you would need to install a bash terminal. To do so, check out [this link](https://www.windowscentral.com/how-install-bash-shell-command-line-windows-10) or open [this document](./Bash4Windows/Bash_on_Windows.pdf).

Once you are in shell/Unix environment, go to the folder where you put the file:

```bash
cd 'C:\Users\$$YOUR_USER_HERE\Downloads\mnc2nii_conversion.sh'

cd ~/Downloads/mnc2nii_conversion.sh
```

Enter the file through any text editor (Notepad, nano, etc) and edit the file:

  1. Add the path of the folder to the line:
  
  ```bash
  SourcePath=/$Path$for$your$MNC.GZ$files/
  ```
  2. Add the path that you want for the output:
  ```bash
  FinalPath=/$Path$to$put$the$NIFTI$files/
  ```

And then, just run the file by running:

```bash
bash mnc2nii_conversion.sh
```
