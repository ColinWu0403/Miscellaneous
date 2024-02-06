#!/bin/bash
iterator=$1
mail_account=$2
echo "Hello$iterator $mail_account!!" > tmp-message
echo >> tmp-message
echo "Today is" `date` >> tmp-message
echo >> tmp-message
echo "Sincerely," >> tmp-message
echo " Myself" >> tmp-message
/usr/bin/mailx -s "mail-hello" "$mail_account" < tmp-message
echo "Message sent."
