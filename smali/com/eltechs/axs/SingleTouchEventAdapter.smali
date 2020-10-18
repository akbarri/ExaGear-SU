.class public Lcom/eltechs/axs/SingleTouchEventAdapter;
.super Ljava/lang/Object;
.source "SingleTouchEventAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# instance fields
.field private finger:Lcom/eltechs/axs/Finger;

.field private final pointerEventListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/PointerEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->pointerEventListeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public varargs addListener([Lcom/eltechs/axs/PointerEventListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 38
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 40
    iget-object v3, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->pointerEventListeners:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 89
    iget-object p2, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-ne p2, p1, :cond_0

    .line 91
    iget-object p2, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->pointerEventListeners:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/PointerEventListener;

    .line 93
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/PointerEventListener;->pointerMove(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyMovedIn(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object p2, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-nez p2, :cond_0

    .line 104
    iput-object p1, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    .line 105
    iget-object p2, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->pointerEventListeners:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/PointerEventListener;

    .line 107
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/PointerEventListener;->pointerEntered(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyMovedOut(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object p2, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-ne p2, p1, :cond_1

    .line 118
    iget-object p2, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->pointerEventListeners:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/PointerEventListener;

    .line 120
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/PointerEventListener;->pointerExited(FF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    iput-object p1, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    :cond_1
    return-void
.end method

.method public notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 75
    iget-object p2, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-ne p2, p1, :cond_1

    .line 77
    iget-object p2, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->pointerEventListeners:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/PointerEventListener;

    .line 79
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/PointerEventListener;->pointerExited(FF)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    :cond_1
    return-void
.end method

.method public notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object p2, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    if-nez p2, :cond_0

    .line 63
    iput-object p1, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->finger:Lcom/eltechs/axs/Finger;

    .line 64
    iget-object p2, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->pointerEventListeners:Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/PointerEventListener;

    .line 66
    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/eltechs/axs/Finger;->getY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/eltechs/axs/PointerEventListener;->pointerEntered(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs removeListener([Lcom/eltechs/axs/PointerEventListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 51
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 53
    iget-object v3, p0, Lcom/eltechs/axs/SingleTouchEventAdapter;->pointerEventListeners:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
