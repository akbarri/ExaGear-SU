.class public Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;
.super Ljava/lang/Object;
.source "WindowPropertiesManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/WindowPropertiesManager;


# instance fields
.field private final host:Lcom/eltechs/axs/xserver/Window;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/eltechs/axs/xserver/Atom;",
            "Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->properties:Ljava/util/Map;

    .line 28
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->host:Lcom/eltechs/axs/xserver/Window;

    return-void
.end method

.method private createProperty(Lcom/eltechs/axs/xserver/WindowProperty$Format;Lcom/eltechs/axs/xserver/Atom;Ljava/lang/Object;)Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "TT;>;",
            "Lcom/eltechs/axs/xserver/Atom;",
            "TT;)",
            "Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty<",
            "TT;>;"
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_BYTES:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    if-ne p1, v0, :cond_0

    .line 135
    new-instance p1, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;

    check-cast p3, [B

    invoke-direct {p1, p2, p3}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfBytesWindowProperty;-><init>(Lcom/eltechs/axs/xserver/Atom;[B)V

    return-object p1

    .line 136
    :cond_0
    sget-object v0, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_SHORTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    if-ne p1, v0, :cond_1

    .line 138
    new-instance p1, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;

    check-cast p3, [S

    invoke-direct {p1, p2, p3}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfShortsWindowProperty;-><init>(Lcom/eltechs/axs/xserver/Atom;[S)V

    return-object p1

    .line 139
    :cond_1
    sget-object v0, Lcom/eltechs/axs/xserver/WindowProperty;->ARRAY_OF_INTS:Lcom/eltechs/axs/xserver/WindowProperty$Format;

    if-ne p1, v0, :cond_2

    .line 141
    new-instance p1, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;

    check-cast p3, [I

    invoke-direct {p1, p2, p3}, Lcom/eltechs/axs/xserver/impl/windowProperties/ArrayOfIntsWindowProperty;-><init>(Lcom/eltechs/axs/xserver/Atom;[I)V

    return-object p1

    :cond_2
    const-string p2, "Invalid property format marker %s."

    const/4 p3, 0x1

    .line 144
    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public deleteProperty(Lcom/eltechs/axs/xserver/Atom;)V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lcom/eltechs/axs/xserver/events/PropertyNotify;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->host:Lcom/eltechs/axs/xserver/Window;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/eltechs/axs/xserver/events/PropertyNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;IZ)V

    .line 125
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->host:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object p1

    sget-object v1, Lcom/eltechs/axs/xserver/EventName;->PROPERTY_CHANGE:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {p1, v0, v1}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    :cond_0
    return-void
.end method

.method public doModifyProperty(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/WindowProperty$Format;Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/eltechs/axs/xserver/Atom;",
            "Lcom/eltechs/axs/xserver/Atom;",
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "TT;>;",
            "Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;",
            "TT;)Z"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0, p3, p2, p5}, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->createProperty(Lcom/eltechs/axs/xserver/WindowProperty$Format;Lcom/eltechs/axs/xserver/Atom;Ljava/lang/Object;)Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;

    move-result-object p2

    .line 82
    iget-object p3, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->properties:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 86
    :cond_0
    sget-object v2, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->REPLACE:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    if-ne p4, v2, :cond_2

    .line 88
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;->getFormat()Lcom/eltechs/axs/xserver/WindowProperty$Format;

    move-result-object p4

    if-ne p4, p3, :cond_1

    .line 90
    invoke-virtual {v0, p5}, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;->replaceValues(Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-direct {p0, p3, p2, p5}, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->createProperty(Lcom/eltechs/axs/xserver/WindowProperty$Format;Lcom/eltechs/axs/xserver/Atom;Ljava/lang/Object;)Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;

    move-result-object p2

    .line 94
    iget-object p3, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->properties:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v1

    .line 100
    :cond_2
    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;->getFormat()Lcom/eltechs/axs/xserver/WindowProperty$Format;

    move-result-object p1

    const/4 p2, 0x0

    if-eq p1, p3, :cond_3

    return p2

    .line 105
    :cond_3
    sget-object p1, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->PREPEND:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    if-ne p4, p1, :cond_4

    .line 107
    invoke-virtual {v0, p5}, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;->prependValues(Ljava/lang/Object;)V

    goto :goto_1

    .line 108
    :cond_4
    sget-object p1, Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;->APPEND:Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;

    if-ne p4, p1, :cond_5

    .line 110
    invoke-virtual {v0, p5}, Lcom/eltechs/axs/xserver/impl/windowProperties/MutableWindowProperty;->appendValues(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string p1, "Unsupported PropertyModification %s."

    .line 113
    new-array p3, v1, [Ljava/lang/Object;

    aput-object p4, p3, p2

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    :goto_1
    return v1
.end method

.method public getProperty(Lcom/eltechs/axs/xserver/Atom;)Lcom/eltechs/axs/xserver/WindowProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/Atom;",
            ")",
            "Lcom/eltechs/axs/xserver/WindowProperty<",
            "*>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/WindowProperty;

    return-object p1
.end method

.method public getProperty(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/WindowProperty$Format;)Lcom/eltechs/axs/xserver/WindowProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/eltechs/axs/xserver/Atom;",
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "TT;>;)",
            "Lcom/eltechs/axs/xserver/WindowProperty<",
            "TT;>;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/xserver/WindowProperty;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 46
    :cond_0
    invoke-interface {p1}, Lcom/eltechs/axs/xserver/WindowProperty;->getFormat()Lcom/eltechs/axs/xserver/WindowProperty$Format;

    move-result-object v1

    if-ne v1, p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public modifyProperty(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/WindowProperty$Format;Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/eltechs/axs/xserver/Atom;",
            "Lcom/eltechs/axs/xserver/Atom;",
            "Lcom/eltechs/axs/xserver/WindowProperty$Format<",
            "TT;>;",
            "Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;",
            "TT;)Z"
        }
    .end annotation

    .line 58
    invoke-virtual/range {p0 .. p5}, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->doModifyProperty(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/WindowProperty$Format;Lcom/eltechs/axs/xserver/WindowPropertiesManager$PropertyModification;Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 60
    new-instance p2, Lcom/eltechs/axs/xserver/events/PropertyNotify;

    iget-object p4, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->host:Lcom/eltechs/axs/xserver/Window;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int p5, v0

    invoke-direct {p2, p4, p1, p5, p3}, Lcom/eltechs/axs/xserver/events/PropertyNotify;-><init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;IZ)V

    .line 61
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/WindowPropertiesManagerImpl;->host:Lcom/eltechs/axs/xserver/Window;

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/Window;->getEventListenersList()Lcom/eltechs/axs/xserver/WindowListenersList;

    move-result-object p1

    sget-object p3, Lcom/eltechs/axs/xserver/EventName;->PROPERTY_CHANGE:Lcom/eltechs/axs/xserver/EventName;

    invoke-virtual {p1, p2, p3}, Lcom/eltechs/axs/xserver/WindowListenersList;->sendEventForEventName(Lcom/eltechs/axs/xserver/events/Event;Lcom/eltechs/axs/xserver/EventName;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p3
.end method
