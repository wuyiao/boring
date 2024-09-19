#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "context.h"
#include "log.h"

context_t* init_context()
{
    context_t *ctx = (context_t *)malloc(sizeof(context_t));

    if (ctx == NULL)
    {
        log_error("malloc context failed\n");
        return NULL;
    }
    log_debug("context init success.\n");
    return ctx;
}

int uninit_context(context_t* ctx)
{
    if (ctx == NULL)
    {
        return 0;
    }
    
    free(ctx);
    ctx = NULL;

    return 0;
}