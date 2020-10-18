.class public Lcom/eltechs/axs/ButtonTapAdapter;
.super Ljava/lang/Object;
.source "ButtonTapAdapter.java"

# interfaces
.implements Lcom/eltechs/axs/TouchEventAdapter;


# instance fields
.field private activeFinger:Lcom/eltechs/axs/Finger;

.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/ButtonTapEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/ButtonTapAdapter;->listeners:Ljava/util/Collection;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/eltechs/axs/ButtonTapAdapter;->activeFinger:Lcom/eltechs/axs/Finger;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/ButtonTapEventListener;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/ButtonTapAdapter;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

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

    .line 87
    iget-object p2, p0, Lcom/eltechs/axs/ButtonTapAdapter;->activeFinger:Lcom/eltechs/axs/Finger;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/eltechs/axs/ButtonTapAdapter;->activeFinger:Lcom/eltechs/axs/Finger;

    :cond_0
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

    .line 59
    iget-object p2, p0, Lcom/eltechs/axs/ButtonTapAdapter;->activeFinger:Lcom/eltechs/axs/Finger;

    if-ne p1, p2, :cond_0

    .line 61
    iget-object p1, p0, Lcom/eltechs/axs/ButtonTapAdapter;->listeners:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/ButtonTapEventListener;

    .line 63
    invoke-interface {p2}, Lcom/eltechs/axs/ButtonTapEventListener;->tapped()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/eltechs/axs/ButtonTapAdapter;->activeFinger:Lcom/eltechs/axs/Finger;

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

    .line 50
    iget-object p2, p0, Lcom/eltechs/axs/ButtonTapAdapter;->activeFinger:Lcom/eltechs/axs/Finger;

    if-nez p2, :cond_0

    .line 52
    iput-object p1, p0, Lcom/eltechs/axs/ButtonTapAdapter;->activeFinger:Lcom/eltechs/axs/Finger;

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/eltechs/axs/ButtonTapEventListener;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/ButtonTapAdapter;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
