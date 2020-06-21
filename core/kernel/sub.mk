srcs-$(CFG_CORE_SANITIZE_KADDRESS) += asan.c
cflags-remove-asan.c-y += $(cflags_kasan)
srcs-y += assert.c
srcs-y += console.c
srcs-$(CFG_DT) += dt.c
srcs-y += pm.c
srcs-y += handle.c
srcs-y += interrupt.c
srcs-$(CFG_LOCKDEP) += lockdep.c
ifneq ($(CFG_CORE_FFA),y)
srcs-$(CFG_CORE_DYN_SHM) += msg_param.c
endif
srcs-y += panic.c
srcs-y += refcount.c
srcs-y += tee_misc.c
srcs-y += tee_ta_manager.c
srcs-$(CFG_CORE_SANITIZE_UNDEFINED) += ubsan.c
srcs-y += scattered_array.c
srcs-y += huk_subkey.c
srcs-$(CFG_SHOW_CONF_ON_BOOT) += show_conf.c
srcs-y += user_mode_ctx.c
srcs-$(CFG_CORE_TPM_EVENT_LOG) += tpm.c
srcs-y += initcall.c
srcs-y += user_access.c
