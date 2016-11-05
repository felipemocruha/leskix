typedef long pid_t;

pid_t fork(void);
int execv(const char *, char *const []);
int execve(const char *, char *const [], char *const []);
int execvp(const char *, char *const []);
