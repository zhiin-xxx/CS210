OUTPUT_ARCH("riscv")
ENTRY(__trap_entry)

SECTIONS
{
    . = 0x00020000;
    
    .text : {
        *(.text.trap)
        *(.text)
    }
    
    .data : {
        *(.data)
    }
    
    .bss : {
        *(.bss)
    }
}
