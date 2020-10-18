.class public Lcom/eltechs/axs/xserver/events/SelectionRequest;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "SelectionRequest.java"


# instance fields
.field private final owner:Lcom/eltechs/axs/xserver/Window;

.field private final property:Lcom/eltechs/axs/xserver/Atom;

.field private final requestor:Lcom/eltechs/axs/xserver/Window;

.field private final selection:Lcom/eltechs/axs/xserver/Atom;

.field private final target:Lcom/eltechs/axs/xserver/Atom;

.field private final timestamp:I


# direct methods
.method public constructor <init>(ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;)V
    .locals 1

    const/16 v0, 0x1e

    .line 21
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 23
    iput p1, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->timestamp:I

    .line 24
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->owner:Lcom/eltechs/axs/xserver/Window;

    .line 25
    iput-object p3, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->requestor:Lcom/eltechs/axs/xserver/Window;

    .line 26
    iput-object p4, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->selection:Lcom/eltechs/axs/xserver/Atom;

    .line 27
    iput-object p5, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->target:Lcom/eltechs/axs/xserver/Atom;

    .line 28
    iput-object p6, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->property:Lcom/eltechs/axs/xserver/Atom;

    return-void
.end method


# virtual methods
.method public getOwner()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->owner:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getProperty()Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->property:Lcom/eltechs/axs/xserver/Atom;

    return-object v0
.end method

.method public getRequestor()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->requestor:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getSelection()Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->selection:Lcom/eltechs/axs/xserver/Atom;

    return-object v0
.end method

.method public getTarget()Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->target:Lcom/eltechs/axs/xserver/Atom;

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/eltechs/axs/xserver/events/SelectionRequest;->timestamp:I

    return v0
.end method
