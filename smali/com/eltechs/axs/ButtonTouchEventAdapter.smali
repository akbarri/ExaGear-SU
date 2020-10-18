.class public Lcom/eltechs/axs/ButtonTouchEventAdapter;
.super Ljava/lang/Object;
.source "ButtonTouchEventAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# instance fields
.field private final buttonEventListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/ButtonEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private pointersInside:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->pointersInside:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->buttonEventListeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public varargs addListener([Lcom/eltechs/axs/ButtonEventListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 32
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 34
    iget-object v3, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->buttonEventListeners:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyMoved(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public notifyMovedIn(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/ButtonTouchEventAdapter;->notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    return-void
.end method

.method public notifyMovedOut(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/eltechs/axs/ButtonTouchEventAdapter;->notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V

    return-void
.end method

.method public notifyReleased(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 79
    iget p1, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->pointersInside:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->pointersInside:I

    .line 80
    iget p1, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->pointersInside:I

    if-nez p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->buttonEventListeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/ButtonEventListener;

    .line 84
    invoke-interface {p2}, Lcom/eltechs/axs/ButtonEventListener;->released()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTouched(Lcom/eltechs/axs/Finger;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/Finger;",
            "Ljava/util/List<",
            "Lcom/eltechs/axs/Finger;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget p1, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->pointersInside:I

    if-nez p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->buttonEventListeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/ButtonEventListener;

    .line 64
    invoke-interface {p2}, Lcom/eltechs/axs/ButtonEventListener;->pressed()V

    goto :goto_0

    .line 67
    :cond_0
    iget p1, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->pointersInside:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->pointersInside:I

    return-void
.end method

.method public varargs removeLister([Lcom/eltechs/axs/ButtonEventListener;)V
    .locals 4

    const/4 v0, 0x0

    .line 45
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 47
    iget-object v3, p0, Lcom/eltechs/axs/ButtonTouchEventAdapter;->buttonEventListeners:Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
