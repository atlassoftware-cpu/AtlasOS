#pragma once

#include <stdint.h>
#include <stddef.h>

typedef struct _service_request_entry_t {
    char label[17];
    char description[64];
    char service_id[16];
    void (*service)(uint32_t, uint32_t, uint32_t*);
} ServiceRequestEntry;

typedef struct _service_request_stack_entry_t {
    ServiceRequestEntry* srvreq;
    uint32_t reg1;
    uint32_t reg2;
    uint32_t* reg3;
} ServiceRequestStackEntry;

extern ServiceRequestStackEntry ServiceRequestStack[4096];
extern char ServiceRequestIDs[4096][16];

void CreateServiceRoutine(char* label, char* description, char* service_id, void (*service)(uint32_t, uint32_t, uint32_t*));
void ServicePush(char* service_id, uint32_t reg1, uint32_t reg2, uint32_t* reg3, ServiceRequestStackEntry* stack);
void SrunStackRoutines(ServiceRequestStackEntry* stack);