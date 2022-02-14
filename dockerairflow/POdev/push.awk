BEGIN {
    printf "#Docker push file generated automatically by makefile\n"
    print strftime("#Generated on %m/%d/%Y %H:%M:%S", systime())
    FS = "\t"
    OFS = " "
# Loop section
}
NR>1{
    str=substr($0,60,28)
    split(str,arr," ")
    TAG=arr[1]
    str=substr($0,1,25)
    split(str,arr," ")
    LOCAL_REGISTRY=arr[1]
    #split(str,arr,"podev")
    #CONTAINER_NAME="podev" arr[2]
    printf "docker tag %s:%s %s.%s/%s:%s\n",LOCAL_REGISTRY,TAG,AZURE_REGISTRY_NAME,AZURE_URL,LOCAL_REGISTRY,TAG
    printf "docker push %s.%s/%s:%s\n",AZURE_REGISTRY_NAME,AZURE_URL,LOCAL_REGISTRY,TAG
}        
END{}     