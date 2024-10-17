clear
###############################
# Author : Sahrul Gunawan Cyber
# Channel YouTube : https://youtube.com/@bangtutorialofficial1152
# Telegram : https://t.me/sahrulgunawan_id
# Official Github : https://github.com/SahrulGunawan-ID
###############################

# "Colors Data"
##################################
K="\033[33;1m" # kuning
M="\033[31;1m" # Merah
P="\033[39;1m" # Putih
R="\033[36;1m" # purple
B="\033[34;1m" # biru
I="\033[32;1m" # ijo
C="\033[35;1m" # purple
##################################


# "Terminal Output Data"
##################################
H1="$(hostname)" # Hostname
H2="$(uname -r)" # Kernel
H3="$(date)"     #Tanggal
H4="$(uname)"    #Terminal Linux
H5="$(uname -m)" #CPU TYPE
H6="$(uname -o)" # User Android
H7="$(id -u)"    #GROUP UUID ID
H8="$(hr -)"     #LINE PRO

if [ ! -d "OUTPUT" ];then
    echo "Directory OUTPUT Not Found !"
    sleep 1
    echo "Make Directory OUTPUT"
    sleep 1 && mkdir OUTPUT
    sleep 0.3
    sh splitfile.sh
fi

echo "${P}$H8"
echo "${K}FILES SPLIT LINUX ${P}| ${K}CPUS TYPE ${M}: ${I}${H5}"
echo "${P}$H8"
echo "${P}YourFile > OutFile > Size File kb mb"
echo "${P}$H8"
read -p "Input Files   # " file;
read -p "Input Size    # " size;
read -p "Input OutFile # " out;
echo "${R}$H8"
split -C $size --numeric-suffixes $file OUTPUT/$out
echo "${P}Split ${I}Done ${R}✓"
echo "${P}$H8"
echo "Files Location : OUTPUT"
tree OUTPUT/
