#include <stdint.h>
// #include <assert.h>
#include <stddef.h>
typedef struct {
  uint64_t regs[32];
  uint64_t mcause,mstatus,mepc;
} Context;
typedef struct {
  enum {
    EVENT_NULL = 0,
    EVENT_YIELD, EVENT_SYSCALL, EVENT_PAGEFAULT, EVENT_ERROR,
    EVENT_IRQ_TIMER, EVENT_IRQ_IODEV,
  } event;

} Event;
// static Context* (*user_handler)(Event, Context*) = NULL;

typedef struct parameters{
    int* arr;
    int len;
}para;
// Context* __am_irq_handle(Context *c) {
//   if(user_handler){
//     Event ev={0};
//   switch(c->mcause){
//     case 11:ev.event=EVENT_YIELD;c->mepc+=4;break;
//     default:break;
//   }
//   c=user_handler(ev,c);
//   // assert(c);
// }
//   return c;
// }
Context*  trap_handler(Context* ctx) {
  // TODO: handling `find_min()`
  //a0中含有地址
  // para* addr=(para*)ctx->regs[10];
  int cause=(int)ctx->mcause;
    switch(cause){
    case 11:
    {
      // ctx->mepc+=4;
      int* arr=(int*)ctx->regs[10];
      int len=(int)ctx->regs[11];
      int minvalue=arr[0];
      for(int i=1;i<len;i++){
        int num=arr[i];
        //arr[i]
          if(num<minvalue){
              minvalue=arr[i];
          }
      }
      ctx->regs[10]=(int64_t)minvalue;
      break;
    }

    default:break;
  }
  
  //  int* arr=(int*)ctx->regs[10];
  //     int len=(int)ctx->regs[11];
  //     int minvalue=arr[0];
  //     for(int i=1;i<len;i++){
  //       int num=arr[i];
  //       //arr[i]
  //         if(num<minvalue){
  //             minvalue=arr[i];
  //         }
  //     }
  //     ctx->regs[10]=(int64_t)minvalue;
  return ctx;
}
// extern void __trap_entry(void);

// bool cte_init(Context*(*handler)(Event, Context*)) {
//   // initialize exception entry
//   asm volatile("csrw mtvec, %0" : : "r"(__trap_entry));

//   // register event handler
//   user_handler = handler;

//   return true;
// }
