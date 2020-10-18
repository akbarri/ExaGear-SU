.class public Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;
.super Ljava/lang/Object;
.source "TouchScreenControlsRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private controls:Lcom/eltechs/axs/TouchScreenControls;

.field private replacementControls:Lcom/eltechs/axs/TouchScreenControls;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private switchControls()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->controls:Lcom/eltechs/axs/TouchScreenControls;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->controls:Lcom/eltechs/axs/TouchScreenControls;

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchScreenControls;->detachedFromGLContext()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->replacementControls:Lcom/eltechs/axs/TouchScreenControls;

    iput-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->controls:Lcom/eltechs/axs/TouchScreenControls;

    .line 91
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->controls:Lcom/eltechs/axs/TouchScreenControls;

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchScreenControls;->attachedToGLContext()V

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->replacementControls:Lcom/eltechs/axs/TouchScreenControls;

    return-void
.end method


# virtual methods
.method public declared-synchronized onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->replacementControls:Lcom/eltechs/axs/TouchScreenControls;

    if-eqz p1, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->switchControls()V

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->controls:Lcom/eltechs/axs/TouchScreenControls;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_1

    .line 49
    monitor-exit p0

    return-void

    :cond_1
    const/16 p1, 0x4100

    .line 52
    :try_start_1
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 54
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->controls:Lcom/eltechs/axs/TouchScreenControls;

    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    :try_start_2
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->controls:Lcom/eltechs/axs/TouchScreenControls;

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchScreenControls;->draw()V

    .line 57
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 57
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 41
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPause()V
    .locals 1

    monitor-enter p0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->controls:Lcom/eltechs/axs/TouchScreenControls;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->controls:Lcom/eltechs/axs/TouchScreenControls;

    invoke-virtual {v0}, Lcom/eltechs/axs/TouchScreenControls;->detachedFromGLContext()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->controls:Lcom/eltechs/axs/TouchScreenControls;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 75
    monitor-exit p0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p1, 0x0

    .line 36
    invoke-static {p1, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    const/4 p1, 0x0

    .line 25
    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0xb44

    .line 26
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0xb71

    .line 27
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0xbe2

    .line 29
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    .line 30
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method public declared-synchronized setTouchScreenControls(Lcom/eltechs/axs/TouchScreenControls;)V
    .locals 0

    monitor-enter p0

    .line 71
    :try_start_0
    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->replacementControls:Lcom/eltechs/axs/TouchScreenControls;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 70
    monitor-exit p0

    throw p1
.end method
