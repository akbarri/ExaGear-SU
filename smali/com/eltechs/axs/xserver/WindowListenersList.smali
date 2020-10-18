.class public Lcom/eltechs/axs/xserver/WindowListenersList;
.super Ljava/lang/Object;
.source "WindowListenersList.java"


# instance fields
.field private final host:Lcom/eltechs/axs/xserver/Window;

.field private final listeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/WindowListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->host:Lcom/eltechs/axs/xserver/Window;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/eltechs/axs/xserver/WindowListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateAllEventsMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;"
        }
    .end annotation

    .line 232
    const-class v0, Lcom/eltechs/axs/xserver/EventName;

    invoke-static {v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->emptyMask(Ljava/lang/Class;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/eltechs/axs/xserver/WindowListener;

    .line 235
    invoke-interface {v2}, Lcom/eltechs/axs/xserver/WindowListener;->getMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->joinWith(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getButtonPressListener()Lcom/eltechs/axs/xserver/client/XClientWindowListener;
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowListener;

    .line 251
    sget-object v2, Lcom/eltechs/axs/xserver/EventName;->BUTTON_PRESS:Lcom/eltechs/axs/xserver/EventName;

    invoke-interface {v1, v2}, Lcom/eltechs/axs/xserver/WindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    if-eqz v2, :cond_0

    .line 254
    check-cast v1, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public isListenerInstalledForEvent(Lcom/eltechs/axs/xserver/EventName;)Z
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowListener;

    .line 151
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isListenerInstalledForEventForClient(Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/client/XClient;)Z
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowListener;

    .line 191
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    .line 193
    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->getClient()Lcom/eltechs/axs/xserver/client/XClient;

    move-result-object v1

    if-ne v1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isListenerInstalledForEventMask(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;)Z"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowListener;

    .line 170
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isListenerInstalledForEventMaskForClient(Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/client/XClient;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Lcom/eltechs/axs/xserver/client/XClient;",
            ")Z"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowListener;

    .line 214
    invoke-interface {v1, p1}, Lcom/eltechs/axs/xserver/WindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    .line 216
    invoke-virtual {v1}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->getClient()Lcom/eltechs/axs/xserver/client/XClient;

    move-result-object v1

    if-ne v1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeListener(Lcom/eltechs/axs/xserver/WindowListener;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public sendEvent(Lcom/eltechs/axs/xserver/events/Event;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowListener;

    .line 61
    iget-object v2, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->host:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v1, v2, p1}, Lcom/eltechs/axs/xserver/WindowListener;->onEvent(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/Event;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendEventForEventMask(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/events/Event;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowListener;

    .line 92
    invoke-interface {v1, p2}, Lcom/eltechs/axs/xserver/WindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->host:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v1, v2, p1}, Lcom/eltechs/axs/xserver/WindowListener;->onEvent(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/Event;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendEventForEventMaskToClient(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/client/XClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/events/Event;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;",
            "Lcom/eltechs/axs/xserver/client/XClient;",
            ")V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowListener;

    .line 132
    invoke-interface {v1, p2}, Lcom/eltechs/axs/xserver/WindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    .line 134
    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->getClient()Lcom/eltechs/axs/xserver/client/XClient;

    move-result-object v2

    if-ne v2, p3, :cond_0

    .line 136
    iget-object v2, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->host:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v1, v2, p1}, Lcom/eltechs/axs/xserver/WindowListener;->onEvent(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/Event;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowListener;

    .line 75
    invoke-interface {v1, p2}, Lcom/eltechs/axs/xserver/WindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->host:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v1, v2, p1}, Lcom/eltechs/axs/xserver/WindowListener;->onEvent(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/Event;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendEventForEventNameToClient(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;Lcom/eltechs/axs/xserver/client/XClient;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->listeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/WindowListener;

    .line 111
    invoke-interface {v1, p2}, Lcom/eltechs/axs/xserver/WindowListener;->isInterestedIn(Lcom/eltechs/axs/xserver/EventName;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v1, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/eltechs/axs/xserver/client/XClientWindowListener;

    .line 113
    invoke-virtual {v2}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->getClient()Lcom/eltechs/axs/xserver/client/XClient;

    move-result-object v2

    if-ne v2, p3, :cond_0

    .line 115
    iget-object v2, p0, Lcom/eltechs/axs/xserver/WindowListenersList;->host:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {v1, v2, p1}, Lcom/eltechs/axs/xserver/WindowListener;->onEvent(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/Event;)V

    goto :goto_0

    :cond_1
    return-void
.end method
