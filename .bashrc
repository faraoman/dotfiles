#
# ~/.bashrc
#

# clear screen as windows
alias cls="clear"

# Print my public IP
alias myip='curl ipinfo.io/ip && echo ""'

# Print IP's info
ipinfo ()
{
    if [ $1 ] ; then
        curl "ipinfo.io/$1" && echo ""
    else
        echo "'$1' is not a valid IP"
    fi
}
