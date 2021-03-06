/**
 * The ClientUser is a User with more features
 * @property {string} avatar - The avatar hash
 * @property {string} descriminator - The descriminator
 * @property {string} id - The ID
 * @property {string} username - The username
 * @property {bool} verified - If the user is verified or not
 * @property {string|null} email - The user's email
 * @property {bool} mfa_enabled - If mfa enabled or not
 * @property {bool} bot - If the client is a bot or not
 */

class ClientUser {
  string avatar;
  string discriminator;
  string id;
  string username;
  bool verified;
  bool bot;
  bool mfa_enabled;
  string | Val.Null email;

  protected Client client;
  /**
  * The constructor
  * @param {mapping} data - The user data
  */
  void create(Client c, mapping data) {
    avatar = data.avatar;
    discriminator = data.discriminator;
    id = data.id;
    username = data.username;
    email = data.email;
    mfa_enabled = data.mfa_enabled;
    bot = data.bot;

    client = c;
  }

  string whenCreated() {
    mapping info = Snowflake()->extractData(id);

    return info.whenCreated;
  }
}
