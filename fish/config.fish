set fish_greeting ""
set -U fish_prompt_pwd_dir_length 0

set -g -x HOME /home/lastsith
set -g -x JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
set -g -x ANDROID_HOME /home/lastsith/Android/Sdk
set -g -x ANDROID_SDK_ROOT /usr/lib/android-sdk
set -g -x BAT_THEME elly

set -gx PATH /home/lastsith/Android/Sdk/emulator /home/lastsith/Android/Sdk/tools /home/lastsith/Android/Sdk/tools/bin /home/lastsith/Android/Sdk/platform-tools /home/linuxbrew/.linuxbrew/bin /home/linuxbrew/.linuxbrew/sbin /home/lastsith/.local/bin /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/games /usr/local/games /snap/bin /home/lastsith/Android/Sdk/emulator /home/lastsith/Android/Sdk/tools /home/lastsith/Android/Sdk/tools/bin /home/lastsith/Android/Sdk/platform-tools $PATH

cd ~/main/
pwd
ls -la
