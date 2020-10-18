.class public Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglRedererEngine;
.super Ljava/lang/Object;
.source "VirglRedererEngine.java"

# interfaces
.implements Lcom/eltechs/axs/rendering/RenderingEngine;


# instance fields
.field private final eglDisplay:Landroid/opengl/EGLDisplay;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglRedererEngine;->eglDisplay:Landroid/opengl/EGLDisplay;

    return-void
.end method


# virtual methods
.method public getGLXExtensionsList()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglRedererEngine;->eglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    const-string v0, "GLX_ARB_create_context GLX_ARB_create_context_profile GLX_ARB_create_context_robustness GLX_ARB_fbconfig_float GLX_ARB_framebuffer_sRGB GLX_ARB_multisample GLX_EXT_create_context_es_profile GLX_EXT_create_context_es2_profile GLX_EXT_fbconfig_packed_float GLX_EXT_framebuffer_sRGB GLX_EXT_import_context GLX_EXT_texture_from_pixmap GLX_EXT_visual_info GLX_EXT_visual_rating GLX_MESA_copy_sub_buffer GLX_OML_swap_method GLX_SGI_swap_control GLX_SGIS_multisample GLX_SGIX_fbconfig GLX_SGIX_pbuffer GLX_SGIX_visual_select_group GLX_INTEL_swap_event "

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglRedererEngine;->eglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglRedererEngine;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/16 v1, 0x3053

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRenderingAvailable()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/rendering/impl/virglRenderer/VirglRedererEngine;->eglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
