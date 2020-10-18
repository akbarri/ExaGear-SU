.class public Lcom/eltechs/axs/SimpleTouchScreenControl;
.super Ljava/lang/Object;
.source "SimpleTouchScreenControl.java"

# interfaces
.implements Lcom/eltechs/axs/TouchScreenControl;


# instance fields
.field private final touchAreas:[Lcom/eltechs/axs/TouchArea;

.field private final visualizers:[Lcom/eltechs/axs/TouchScreenControlVisualizer;


# direct methods
.method public constructor <init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/eltechs/axs/SimpleTouchScreenControl;->touchAreas:[Lcom/eltechs/axs/TouchArea;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 25
    new-array p2, p1, [Lcom/eltechs/axs/PointerVisualizer;

    :goto_0
    iput-object p2, p0, Lcom/eltechs/axs/SimpleTouchScreenControl;->visualizers:[Lcom/eltechs/axs/TouchScreenControlVisualizer;

    return-void
.end method


# virtual methods
.method public attachedToGLContext(Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;)V
    .locals 4

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/SimpleTouchScreenControl;->visualizers:[Lcom/eltechs/axs/TouchScreenControlVisualizer;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 33
    invoke-interface {v3, p1}, Lcom/eltechs/axs/TouchScreenControlVisualizer;->attachedToGLContext(Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public detachedFromGLContext()V
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/SimpleTouchScreenControl;->visualizers:[Lcom/eltechs/axs/TouchScreenControlVisualizer;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 42
    invoke-interface {v3}, Lcom/eltechs/axs/TouchScreenControlVisualizer;->detachedFromGLContext()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleFingerDown(Lcom/eltechs/axs/Finger;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/SimpleTouchScreenControl;->touchAreas:[Lcom/eltechs/axs/TouchArea;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 51
    invoke-virtual {v3, p1}, Lcom/eltechs/axs/TouchArea;->handleFingerDown(Lcom/eltechs/axs/Finger;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleFingerMove(Lcom/eltechs/axs/Finger;)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/eltechs/axs/SimpleTouchScreenControl;->touchAreas:[Lcom/eltechs/axs/TouchArea;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 69
    invoke-virtual {v3, p1}, Lcom/eltechs/axs/TouchArea;->handleFingerMove(Lcom/eltechs/axs/Finger;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleFingerUp(Lcom/eltechs/axs/Finger;)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/SimpleTouchScreenControl;->touchAreas:[Lcom/eltechs/axs/TouchArea;

    const/4 v1, 0x0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 60
    invoke-virtual {v3, p1}, Lcom/eltechs/axs/TouchArea;->handleFingerUp(Lcom/eltechs/axs/Finger;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
