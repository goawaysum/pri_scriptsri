awk -F: '{if($3>=1000){i++}else{y++}}END{print "普通用户个数："i,"系统用户个数："y}' /etc/passwd











