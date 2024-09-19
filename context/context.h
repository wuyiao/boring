/**
 * Copyright (c) 2020 rxi
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the MIT license. See `log.c` for details.
 */

#ifndef _CONTEXT_H_
#define _CONTEXT_H_


typedef struct context_s
{
}context_t;
// }__attribute__ ((packed)) context_t;


#ifdef _cplusplus
extern "C" {
#endif


context_t* init_context();
int uninit_context(context_t* ctx);


#ifdef _cplusplus
}
#endif

#endif