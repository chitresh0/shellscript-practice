cat /etc/os-release | awk -F '=' '/^PRETTY_NAME/{print $2}' | tr -d '"'

os_name=$(cat /etc/os-release | awk -F '=' '/^NAME/{print $2}' | awk '{print $1}' | tr -d '"')

if [ "$os_name" == "Ubuntu" ]
then
	echo "system is ubuntu"
	os_versionid=$(cat /etc/os-release | awk -F '=' '/^VERSION_ID/{print $2}' | awk '{print $1}' | tr -d '"')

	case $os_versionid in
		"14.04" )
			echo "os version is 14.04"
			;;

		"16.04" )
			echo "os version is 16.04"
			;;

		"18.04" )
			echo "os version is 18.04"
			;;
	esac
elif [ "$os_name" == "CentOS" ]
then
	echo "system is centos"
else
	echo "system is $os_name"
fi


