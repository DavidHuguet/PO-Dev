BEGIN {
    printf "#Docker commit file generated automatically by commit.sh script\n"
    print strftime("#Generated on %m/%d/%Y %H:%M:%S", systime())
    FS = "\t"
    OFS = " "
# Loop section
}
NR>1{
    CONTAINER_ID=substr($0,1,12)
    str=substr($0,15,21)
    split(str,arr,":")
    IMAGE_NAME=arr[1]
    str=substr($0,164,30)
    split(str,arr,"podev")
    CONTAINER_NAME="podev" arr[2]
    printf "docker commit %s %s:%s\n",CONTAINER_ID,IMAGE_NAME,CONTAINER_NAME
}        
END{}     