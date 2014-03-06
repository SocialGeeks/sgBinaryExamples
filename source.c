extern write(const char*,int);

int strlen(const char* a) {
    int i;
    for(i = 0; *a != '\0'; a++, i++);
    return i;
}

int main() {
    const char *message = "Hello, World\n";
    int len = strlen(message);
    write(message, len);
    return 0;
}
