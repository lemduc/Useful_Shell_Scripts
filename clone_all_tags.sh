for line in $(git tag); do 
     git clone --branch $line https://android.googlesource.com/platform/hardware/libhardware $line
done
