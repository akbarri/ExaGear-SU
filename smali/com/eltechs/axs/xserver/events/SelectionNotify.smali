.class public Lcom/eltechs/axs/xserver/events/SelectionNotify;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "SelectionNotify.java"


# instance fields
.field private final property:Lcom/eltechs/axs/xserver/Atom;

.field private final requestor:Lcom/eltechs/axs/xserver/Window;

.field private final selection:Lcom/eltechs/axs/xserver/Atom;

.field private final target:Lcom/eltechs/axs/xserver/Atom;

.field private final timestamp:I


# direct methods
.method public constructor <init>(ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;)V
    .locals 1

    const/16 v0, 0x1f

    .line 20
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 22
    iput p1, p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;->timestamp:I

    .line 23
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;->requestor:Lcom/eltechs/axs/xserver/Window;

    .line 24
    iput-object p3, p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;->selection:Lcom/eltechs/axs/xserver/Atom;

    .line 25
    iput-object p4, p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;->target:Lcom/eltechs/axs/xserver/Atom;

    .line 26
    iput-object p5, p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;->property:Lcom/eltechs/axs/xserver/Atom;

    return-void
.end method


# virtual methods
.method public getProperty()Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;->property:Lcom/eltechs/axs/xserver/Atom;

    return-object v0
.end method

.method public getRequestor()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;->requestor:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getSelection()Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;->selection:Lcom/eltechs/axs/xserver/Atom;

    return-object v0
.end method

.method public getTarget()Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;->target:Lcom/eltechs/axs/xserver/Atom;

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/eltechs/axs/xserver/events/SelectionNotify;->timestamp:I

    return v0
.end method
