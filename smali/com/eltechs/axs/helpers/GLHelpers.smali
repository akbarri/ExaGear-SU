.class public abstract Lcom/eltechs/axs/helpers/GLHelpers;
.super Ljava/lang/Object;
.source "GLHelpers.java"


# static fields
.field private static have_GL_OES_texture_npot:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized have_GL_OES_texture_npot()Z
    .locals 2

    const-class v0, Lcom/eltechs/axs/helpers/GLHelpers;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/eltechs/axs/helpers/GLHelpers;->have_GL_OES_texture_npot:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const-string v1, "GL_OES_texture_npot"

    .line 26
    invoke-static {v1}, Lcom/eltechs/axs/helpers/GLHelpers;->isGLExtensionAvailable(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/eltechs/axs/helpers/GLHelpers;->have_GL_OES_texture_npot:Ljava/lang/Boolean;

    .line 29
    :cond_0
    sget-object v1, Lcom/eltechs/axs/helpers/GLHelpers;->have_GL_OES_texture_npot:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isEGLExtensionAvailable(Ljava/lang/String;)Z
    .locals 6

    const-class v0, Lcom/eltechs/axs/helpers/GLHelpers;

    monitor-enter v0

    .line 52
    :try_start_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/egl/EGL10;

    .line 53
    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    const/16 v3, 0x3055

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/egl/EGL10;->eglQueryString(Ljavax/microedition/khronos/egl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, " "

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 59
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 61
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isGLExtensionAvailable(Ljava/lang/String;)Z
    .locals 6

    const-class v0, Lcom/eltechs/axs/helpers/GLHelpers;

    monitor-enter v0

    const/16 v1, 0x1f03

    .line 34
    :try_start_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, " "

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 40
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 42
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0

    throw p0
.end method
