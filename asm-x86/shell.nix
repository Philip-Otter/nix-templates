{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {                

  buildInputs = with pkgs; [   
    binutils   
    nasm
    gdb       
  ];

  shellHook = ''
    RED='\e[1;31m'
    BLUE='\e[1;34m'
    GREEN='\e[1;32m'
    CYAN='\e[1;36m'
    RESET='\e[0m'

    export PS1="\n\[$CYAN\]SHELLED{\[$RED\][ASSEMBLY]\[$GREEN\]\u\[$RESET\]:\[$BLUE\]\w\[$CYAN\]}\[$RESET\]\$ "

    echo -e " \n $CYAN>> Assembly Environment Ready$RESET"
    echo -e " Tools loaded: $GREEN binutils, nasm, gdb $RESET \n"
  '';
}
