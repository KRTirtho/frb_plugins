#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>
typedef struct _Dart_Handle* Dart_Handle;

typedef struct DartCObject DartCObject;

typedef int64_t DartPort;

typedef bool (*DartPostCObjectFnType)(DartPort port_id, void *message);

typedef struct wire_uint_8_list {
  uint8_t *ptr;
  int32_t len;
} wire_uint_8_list;

typedef struct wire_RPCTimestamps {
  int64_t *start;
  int64_t *end;
} wire_RPCTimestamps;

typedef struct wire_int_32_list {
  int32_t *ptr;
  int32_t len;
} wire_int_32_list;

typedef struct wire_RPCParty {
  struct wire_uint_8_list *id;
  struct wire_int_32_list *size;
} wire_RPCParty;

typedef struct wire_RPCAssets {
  struct wire_uint_8_list *large_image;
  struct wire_uint_8_list *large_text;
  struct wire_uint_8_list *small_image;
  struct wire_uint_8_list *small_text;
} wire_RPCAssets;

typedef struct wire_RPCSecrets {
  struct wire_uint_8_list *join;
  struct wire_uint_8_list *spectate;
  struct wire_uint_8_list *match_str;
} wire_RPCSecrets;

typedef struct wire_RPCButton {
  struct wire_uint_8_list *label;
  struct wire_uint_8_list *url;
} wire_RPCButton;

typedef struct wire_list_rpc_button {
  struct wire_RPCButton *ptr;
  int32_t len;
} wire_list_rpc_button;

typedef struct wire_RPCActivity {
  struct wire_uint_8_list *state;
  struct wire_uint_8_list *details;
  struct wire_RPCTimestamps *timestamps;
  struct wire_RPCParty *party;
  struct wire_RPCAssets *assets;
  struct wire_RPCSecrets *secrets;
  struct wire_list_rpc_button *buttons;
} wire_RPCActivity;

typedef struct DartCObject *WireSyncReturn;

void store_dart_post_cobject(DartPostCObjectFnType ptr);

Dart_Handle get_dart_object(uintptr_t ptr);

void drop_dart_object(uintptr_t ptr);

uintptr_t new_dart_opaque(Dart_Handle handle);

intptr_t init_frb_dart_api_dl(void *obj);

void wire_discord_init(int64_t port_, struct wire_uint_8_list *client_id);

void wire_discord_connect(int64_t port_);

void wire_discord_reconnect(int64_t port_);

void wire_discord_close(int64_t port_);

void wire_discord_clear_activity(int64_t port_);

void wire_discord_set_activity(int64_t port_, struct wire_RPCActivity *activity);

int64_t *new_box_autoadd_i64_0(int64_t value);

struct wire_RPCActivity *new_box_autoadd_rpc_activity_0(void);

struct wire_RPCAssets *new_box_autoadd_rpc_assets_0(void);

struct wire_RPCParty *new_box_autoadd_rpc_party_0(void);

struct wire_RPCSecrets *new_box_autoadd_rpc_secrets_0(void);

struct wire_RPCTimestamps *new_box_autoadd_rpc_timestamps_0(void);

struct wire_int_32_list *new_int_32_list_0(int32_t len);

struct wire_list_rpc_button *new_list_rpc_button_0(int32_t len);

struct wire_uint_8_list *new_uint_8_list_0(int32_t len);

void free_WireSyncReturn(WireSyncReturn ptr);

static int64_t dummy_method_to_enforce_bundling(void) {
    int64_t dummy_var = 0;
    dummy_var ^= ((int64_t) (void*) wire_discord_init);
    dummy_var ^= ((int64_t) (void*) wire_discord_connect);
    dummy_var ^= ((int64_t) (void*) wire_discord_reconnect);
    dummy_var ^= ((int64_t) (void*) wire_discord_close);
    dummy_var ^= ((int64_t) (void*) wire_discord_clear_activity);
    dummy_var ^= ((int64_t) (void*) wire_discord_set_activity);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_i64_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_rpc_activity_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_rpc_assets_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_rpc_party_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_rpc_secrets_0);
    dummy_var ^= ((int64_t) (void*) new_box_autoadd_rpc_timestamps_0);
    dummy_var ^= ((int64_t) (void*) new_int_32_list_0);
    dummy_var ^= ((int64_t) (void*) new_list_rpc_button_0);
    dummy_var ^= ((int64_t) (void*) new_uint_8_list_0);
    dummy_var ^= ((int64_t) (void*) free_WireSyncReturn);
    dummy_var ^= ((int64_t) (void*) store_dart_post_cobject);
    dummy_var ^= ((int64_t) (void*) get_dart_object);
    dummy_var ^= ((int64_t) (void*) drop_dart_object);
    dummy_var ^= ((int64_t) (void*) new_dart_opaque);
    return dummy_var;
}
