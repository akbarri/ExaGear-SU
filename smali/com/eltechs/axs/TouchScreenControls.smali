.class public Lcom/eltechs/axs/TouchScreenControls;
.super Ljava/lang/Object;
.source "TouchScreenControls.java"


# instance fields
.field private graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

.field private graphicsSceneConfigurer:Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;

.field private final touchScreenControls:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/TouchScreenControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->touchScreenControls:Ljava/util/Collection;

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/TouchScreenControls;->graphicsSceneConfigurer:Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;

    return-void
.end method


# virtual methods
.method public add(Lcom/eltechs/axs/TouchScreenControl;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->touchScreenControls:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachedToGLContext()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->graphicsSceneConfigurer:Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;

    invoke-virtual {v0}, Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;->createScene()Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    .line 45
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->touchScreenControls:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/TouchScreenControl;

    .line 47
    iget-object v2, p0, Lcom/eltechs/axs/TouchScreenControls;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    invoke-interface {v1, v2}, Lcom/eltechs/axs/TouchScreenControl;->attachedToGLContext(Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detachedFromGLContext()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->touchScreenControls:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/TouchScreenControl;

    .line 57
    invoke-interface {v1}, Lcom/eltechs/axs/TouchScreenControl;->detachedFromGLContext()V

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    invoke-virtual {v0}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->destroy()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    :cond_1
    return-void
.end method

.method public draw()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->graphicsScene:Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;

    invoke-virtual {v0}, Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;->draw()V

    :cond_0
    return-void
.end method

.method public handleFingerDown(Lcom/eltechs/axs/Finger;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->touchScreenControls:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/TouchScreenControl;

    .line 83
    invoke-interface {v1, p1}, Lcom/eltechs/axs/TouchScreenControl;->handleFingerDown(Lcom/eltechs/axs/Finger;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleFingerMove(Lcom/eltechs/axs/Finger;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->touchScreenControls:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/TouchScreenControl;

    .line 109
    invoke-interface {v1, p1}, Lcom/eltechs/axs/TouchScreenControl;->handleFingerMove(Lcom/eltechs/axs/Finger;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleFingerUp(Lcom/eltechs/axs/Finger;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/eltechs/axs/TouchScreenControls;->touchScreenControls:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/TouchScreenControl;

    .line 96
    invoke-interface {v1, p1}, Lcom/eltechs/axs/TouchScreenControl;->handleFingerUp(Lcom/eltechs/axs/Finger;)V

    goto :goto_0

    :cond_0
    return-void
.end method
