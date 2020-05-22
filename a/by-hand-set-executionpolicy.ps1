# THIS MUST TYPED INTO POWERSHELL BY HAND, otherwise no other powershell scripts will execute
# based on https://www.darkoperator.com/blog/2013/3/5/powershell-basics-execution-policy-part-1.html
set-executionpolicy bypass -scope currentuser
get-executionpolicy -list