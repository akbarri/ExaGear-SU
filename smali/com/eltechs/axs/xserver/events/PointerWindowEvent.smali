.class public abstract Lcom/eltechs/axs/xserver/events/PointerWindowEvent;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "PointerWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;,
        Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;
    }
.end annotation


# instance fields
.field private final child:Lcom/eltechs/axs/xserver/Window;

.field private final detail:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

.field private final event:Lcom/eltechs/axs/xserver/Window;

.field private final eventX:S

.field private final eventY:S

.field private final mode:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

.field private final root:Lcom/eltechs/axs/xserver/Window;

.field private final rootX:S

.field private final rootY:S

.field private final sameScreenAndFocus:B

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
.method protected constructor <init>(ILcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;SSSSLcom/eltechs/axs/xserver/impl/masks/Mask;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;",
            "Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;",
            "I",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Window;",
            "Lcom/eltechs/axs/xserver/Window;",
            "SSSS",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/xserver/KeyButNames;",
            ">;Z)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 47
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->detail:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    .line 48
    iput-object p3, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->mode:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    .line 49
    iput p4, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->timestamp:I

    .line 50
    iput-object p5, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->root:Lcom/eltechs/axs/xserver/Window;

    .line 51
    iput-object p6, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->event:Lcom/eltechs/axs/xserver/Window;

    .line 52
    iput-object p7, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->child:Lcom/eltechs/axs/xserver/Window;

    .line 53
    iput-short p8, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->rootX:S

    .line 54
    iput-short p9, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->rootY:S

    .line 55
    iput-short p10, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->eventX:S

    .line 56
    iput-short p11, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->eventY:S

    .line 57
    iput-object p12, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->state:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    or-int/lit8 p1, p13, 0x2

    int-to-byte p1, p1

    .line 58
    iput-byte p1, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->sameScreenAndFocus:B

    return-void
.end method


# virtual methods
.method public getChild()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->child:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getDetail()Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->detail:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Detail;

    return-object v0
.end method

.method public getEvent()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->event:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getEventX()S
    .locals 1

    .line 93
    iget-short v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->eventX:S

    return v0
.end method

.method public getEventY()S
    .locals 1

    .line 98
    iget-short v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->eventY:S

    return v0
.end method

.method public getMode()Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->mode:Lcom/eltechs/axs/xserver/events/PointerWindowEvent$Mode;

    return-object v0
.end method

.method public getRoot()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->root:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getRootX()S
    .locals 1

    .line 83
    iget-short v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->rootX:S

    return v0
.end method

.method public getRootY()S
    .locals 1

    .line 88
    iget-short v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->rootY:S

    return v0
.end method

.method public getSameScreenAndFocus()B
    .locals 1

    .line 108
    iget-byte v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->sameScreenAndFocus:B

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

    .line 103
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->state:Lcom/eltechs/axs/xserver/impl/masks/Mask;

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/eltechs/axs/xserver/events/PointerWindowEvent;->timestamp:I

    return v0
.end method
