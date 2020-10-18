.class public Lcom/eltechs/axs/PointerVisualizer;
.super Ljava/lang/Object;
.source "PointerVisualizer.java"

# interfaces
.implements Lcom/eltechs/axs/PointerEventListener;
.implements Lcom/eltechs/axs/TouchScreenControlVisualizer;


# instance fields
.field private final color:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/eltechs/axs/PointerVisualizer;->color:I

    return-void
.end method

.method private updatePointer(FF)V
    .locals 0

    .line 33
    iput p1, p0, Lcom/eltechs/axs/PointerVisualizer;->x:F

    .line 34
    iput p2, p0, Lcom/eltechs/axs/PointerVisualizer;->y:F

    return-void
.end method


# virtual methods
.method public attachedToGLContext(Lcom/eltechs/axs/graphicsScene/SceneOfRectangles;)V
    .locals 0

    return-void
.end method

.method public detachedFromGLContext()V
    .locals 0

    return-void
.end method

.method public pointerEntered(FF)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/PointerVisualizer;->updatePointer(FF)V

    return-void
.end method

.method public pointerExited(FF)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/PointerVisualizer;->updatePointer(FF)V

    return-void
.end method

.method public pointerMove(FF)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/PointerVisualizer;->updatePointer(FF)V

    return-void
.end method
