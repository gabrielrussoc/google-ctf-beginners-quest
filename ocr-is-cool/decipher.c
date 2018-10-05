#include <stdio.h>
#include <ctype.h>

char s[100];

int main() {
    scanf(" %s", s);
    for(int r = 0; r < 26; r++) {
        for(int i = 0; s[i]; i++) {
            if(isupper(s[i])) {
                putchar((s[i]-'A'+r) % 26 + 'A');
            } else if (islower(s[i])) {
                putchar((s[i]-'a'+r) % 26 + 'a');
            } else putchar(s[i]);
        }
        putchar('\n');
    }
}
