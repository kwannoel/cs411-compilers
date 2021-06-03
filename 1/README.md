# Notes

`sys_write` spec:

| Name      | rax  | rdi             | rsi                    | rdx          |
|-----------|------|-----------------|------------------------|--------------|
| sys_write | 0x01 | unsigned int fd | const char __user *buf | size_t count |

Given:

``` sh
rax = 0x01
rsi = 120 # since msg = 120
rdx = 1 # length of msg buffer
rdi = 1 # stdout
```

We notice that `rsi` is `const char`.
As such, this prints `120` as `x` in stdout as it convert `120` to ASCII char.

## System call references

- https://syscalls64.paolostivanin.com/

- https://filippo.io/linux-syscall-table/
