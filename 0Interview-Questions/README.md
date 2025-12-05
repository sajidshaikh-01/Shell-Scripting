# Linux Shell & Scripting Interview Questions -
---

## **Q1: What is a shell?**

A shell is a command-line interpreter that allows users to interact with the operating system.
Examples: Bash, Zsh, Ksh.

---

## **Q2: What is shell scripting?**

Shell scripting is writing a sequence of commands in a file to automate tasks.

---

## **Q3: How to tell which shell you are running?**

```
echo $SHELL
ps -p $$
```

---

## **Q4: Commonly used shells in Linux?**

* **bash** (Bourne Again Shell)
* **sh** (Bourne Shell)
* **zsh** (Z Shell)
* **ksh** (Korn Shell)
* **csh** (C Shell)

---

## **Q5: How to run/execute a script?**

```
./script.sh
bash script.sh
sh script.sh
```

---

## **Q6: After executing a script, how to terminate it?**

Use:

```
exit
```

Inside script:

```
exit 0
```

---

## **Q7: What is the default login shell? How to change it?**

Default shell is listed in:

```
/etc/passwd
```

Change shell:

```
chsh -s /bin/bash user
```

---

## **Q8: Purpose of shebang line (#!/bin/bash)?**

Tells the OS which interpreter should execute the script.

---

## **Q9: How to write comments in shell script?**

```
# This is a comment
```

---

## **Q10: How to write multi-line comments?**

Method 1:

```
: << 'EOF'
This is a
multi-line comment
EOF
```

---

## **Q11: Commands used to print output in bash?**

```
echo
printf
```

---

## **Q12: How to make a variable read‑only?**

```
readonly VAR=value
```

---

## **Q13: How to find the number of arguments passed to a script?**

```
$#
```

---

## **Q14: How to start an infinite loop?**

```
while true
do
  command
done
```

---

## **Q15: Operator to test if two strings are equal?**

```
=
```

Example:

```
[ "$a" = "$b" ]
```

---

## **Q16: Store output of a command in a variable?**

```
TMP_FILE=$(hostname)
```

---

## **Q17: Which keyword ends a case statement?**

```
esac
```

---

## **Q18: Which variable name is valid?**

```
VAR
```

(Variables cannot start with numbers or contain special characters.)

---

## **Q19: Which compares integer values in bash?**

```
-eq, -ne, -gt, -lt
```

Example:

```
[ $a -eq $b ]
```

---

## **Q20: Difference between $@ and $* ?**

* **$@** → treats each argument separately
* **$*** → treats all arguments as a single string

---

## **Q21: Redirect and append both stdout and stderr?**

```
command >> file 2>&1
```

---

## **Q22: Can you pass arguments to a running script?**

Yes. Arguments are passed as:

```
./script.sh arg1 arg2
```

Inside script:

```
$1, $2, ...
```

---

## **Q23: True/False – Does "read" split data into variables?**

**True.**

```
read a b c
```

---

## **Q24: A while loop repeats as long as condition is _______.**

**True / Non-zero exit status? → False**
Correct answer: **True (while condition is true / success)**

---

## **Q25: How to open a read‑only file in Shell?**

```
vi -R file
less file
```

---

## **Q26: How to debug shell script problems?**

Use debug mode:

```
bash -x script.sh
set -x        # turn on debugging
set +x        # turn off debugging
```

---

## **Q27: How to check if a directory exists?**

```
if [ -d "/path/dir" ]; then
  echo "Directory exists"
else
  echo "Directory NOT found"
fi
```



