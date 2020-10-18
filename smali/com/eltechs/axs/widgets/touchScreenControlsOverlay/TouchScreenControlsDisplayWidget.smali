.class public Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;
.super Landroid/opengl/GLSurfaceView;
.source "TouchScreenControlsDisplayWidget.java"


# instance fields
.field private final renderer:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/activities/XServerDisplayActivity;)V
    .locals 7

    .line 30
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 33
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->setEGLContextClientVersion(I)V

    const/16 v1, 0x8

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v0, p0

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->setEGLConfigChooser(IIIIII)V

    .line 40
    invoke-virtual {p0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 42
    new-instance p1, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;

    invoke-direct {p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->renderer:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;

    .line 44
    iget-object p1, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->renderer:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->renderer:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;

    invoke-virtual {v0}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->onPause()V

    .line 64
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 56
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method

.method public setTouchScreenControls(Lcom/eltechs/axs/TouchScreenControls;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsDisplayWidget;->renderer:Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/widgets/touchScreenControlsOverlay/TouchScreenControlsRenderer;->setTouchScreenControls(Lcom/eltechs/axs/TouchScreenControls;)V

    return-void
.end method
