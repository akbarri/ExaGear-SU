.class public abstract Lcom/eltechs/axs/xserver/events/InputDeviceEvent;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "InputDeviceEvent.java"


# instance fields
.field private final child:Lcom/eltechs/axs/xserver/Window;

.field private final detail:B

.field private final event:Lcom/eltechs/axs/xserver/Window;

.field private final eventX:S

.field private final eventY:S

.field private final root:Lcom/eltechs/axs/xserver/Window;

.field private final rootX:S

.field private final rootY:S

.field private final state:Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:I


# direct methods
.method protected constructor <init>(IBILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IBI",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Window;",
            "SSSS",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 39
    iput-byte p2, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->detail:B

    .line 40
    iput p3, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->timestamp:I

    .line 41
    iput-object p4, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->root:Lcom/eltechs/axs/xserver/Window;

    .line 42
    iput-object p5, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->event:Lcom/eltechs/axs/xserver/Window;

    .line 43
    iput-object p6, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->child:Lcom/eltechs/axs/xserver/Window;

    .line 44
    iput-short p7, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->rootX:S

    .line 45
    iput-short p8, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->rootY:S

    .line 46
    iput-short p9, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->eventX:S

    .line 47
    iput-short p10, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->eventY:S

    .line 48
    iput-object p11, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->state:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    return-void
.end method


# virtual methods
.method public getChild()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->child:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getDetail()B
    .locals 1

    .line 53
    iget-byte v0, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->detail:B

    return v0
.end method

.method public getEvent()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->event:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getEventX()S
    .locals 1

    .line 88
    iget-short v0, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->eventX:S

    return v0
.end method

.method public getEventY()S
    .locals 1

    .line 93
    iget-short v0, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->eventY:S

    return v0
.end method

.method public getRoot()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->root:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getRootX()S
    .locals 1

    .line 78
    iget-short v0, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->rootX:S

    return v0
.end method

.method public getRootY()S
    .locals 1

    .line 83
    iget-short v0, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->rootY:S

    return v0
.end method

.method public getState()Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->state:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/eltechs/axs/xserver/events/InputDeviceEvent;->timestamp:I

    return v0
.end method
