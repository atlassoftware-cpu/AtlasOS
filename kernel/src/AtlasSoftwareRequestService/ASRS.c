#include "AtlasSoftwareRequestService.h"
#include <stddef.h>
#include <stdint.h>

int last_id = 0;

extern char* _strncpy(char* dest, const char* src, size_t n);
extern int _strcmp(const char* str1, const char* str2);

void CreateServiceRoutine(char* label, char* description, char* service_id, void (*service)(uint32_t, uint32_t, uint32_t*)) {
    static ServiceRequestEntry srvreq_instances[4096];
    static ServiceRequestStackEntry stack_instances[4096];

    ServiceRequestEntry* srvreq = &srvreq_instances[last_id];
    _strncpy(srvreq->label, label, 17);
    _strncpy(srvreq->description, description, 64);
    _strncpy(srvreq->service_id, service_id, 16);
    srvreq->service = service;

    ServiceRequestStackEntry* stack = &stack_instances[last_id];
    stack->srvreq = srvreq;
    stack->reg1 = 0;
    stack->reg2 = 0;
    stack->reg3 = 0;

    ServiceRequestStack[last_id] = *stack;
    _strncpy(ServiceRequestIDs[last_id++], service_id, 16);
}

void ServicePush(char* service_id, uint32_t reg1, uint32_t reg2, uint32_t* reg3, ServiceRequestStackEntry* stack) {
    static ServiceRequestEntry srvreq_instances[4096];
    static int srvreq_index = 0;

    ServiceRequestEntry* srvreq = &srvreq_instances[srvreq_index++];
    _strncpy(srvreq->service_id, service_id, 16);
    srvreq->service = 0;

    stack->srvreq = srvreq;
    stack->reg1 = reg1;
    stack->reg2 = reg2;
    stack->reg3 = reg3;
}

void SrunStackRoutines(ServiceRequestStackEntry* stack) {
    int len = sizeof(ServiceRequestStack) / sizeof(ServiceRequestStack[0]);

    for (int i = len - 1; i >= 0; i--) {
        if (_strcmp(stack[i].srvreq->service_id, ServiceRequestIDs[i]) == 0) {
            stack[i].srvreq->service(stack[i].reg1, stack[i].reg2, stack[i].reg3);
        }
    }
}