### Fisher
- Fisher is a solution to interact with the Discord API using Pike
- Fisher is VERY new and mid development

#### Example usage v0.0.1
```pike
#include "Client.pike"

int main() {
  Client client = Client("NDcxNjkzNjgyMzE2NDEwODgw.DuRzIQ.cXmiqL9yXIgL61WjfGydRNPgpDI");
  client->login();
  client.handlers->ready = handlem;

  return -1;
}

void handleReady(Client client) {
  write("==============\n");
  write("Connected as %s\n", client.user.username);
  write("ID: %s\n", client.user.id);
  write("Descriminator: %s\n", client.user.descriminator);
  write("Using Fisher v0.0.1");
}
```
