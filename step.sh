#!/usr/bin/expect -f

set timeout -1

spawn step ca init  --ssh
expect "Hosted - fully-managed step-ca cloud instance run for you by smallstep"
send -- "\r"
expect "(e.g. Smallstep)"
send -- "Example.com CA\r"

expect "1.1.1.1"
send -- "ca.example.com\r"

expect ":443"
send -- ":443\r"

expect "you@smallstep.com"
send -- "ca@example.com\r"

exp_internal 1

expect "we'll generate one"
send -- "pass.word1234\r"

interact
