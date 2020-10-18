.class public Lcom/eltechs/axs/xserver/client/XClientWindowListener;
.super Ljava/lang/Object;
.source "XClientWindowListener.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/WindowListener;


# instance fields
.field private final client:Lcom/eltechs/axs/xserver/client/XClient;

.field private final eventMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/client/XClient;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->eventMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    .line 22
    iput-object p1, p0, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->client:Lcom/eltechs/axs/xserver/client/XClient;

    return-void
.end method

.method private isInterestedIn(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/xserver/events/Event;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getClient()Lcom/eltechs/axs/xserver/client/XClient;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->client:Lcom/eltechs/axs/xserver/client/XClient;

    return-object v0
.end method

.method public getMask()Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->eventMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    return-object v0
.end method

.method public isInterestedIn(Lcom/eltechs/axs/xserver/EventName;)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->eventMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p1

    return p1
.end method

.method public isInterestedIn(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/EventName;",
            ">;)Z"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->eventMask:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-virtual {v0, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->intersects(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z

    move-result p1

    return p1
.end method

.method public onEvent(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/events/Event;)V
    .locals 0

    .line 28
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->isInterestedIn(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Lcom/eltechs/axs/xserver/client/XClientWindowListener;->client:Lcom/eltechs/axs/xserver/client/XClient;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClient;->createEventSender()Lcom/eltechs/axs/proto/output/XEventSender;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/proto/output/XEventSender;->sendEvent(Lcom/eltechs/axs/xserver/events/Event;)V

    :cond_0
    return-void
.end method
