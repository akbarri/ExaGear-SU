.class public Lcom/eltechs/axs/xserver/events/SelectionClear;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "SelectionClear.java"


# instance fields
.field private final owner:Lcom/eltechs/axs/xserver/Window;

.field private final selection:Lcom/eltechs/axs/xserver/Atom;

.field private final timestamp:I


# direct methods
.method public constructor <init>(ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;)V
    .locals 1

    const/16 v0, 0x1d

    .line 17
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 19
    iput p1, p0, Lcom/eltechs/axs/xserver/events/SelectionClear;->timestamp:I

    .line 20
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/SelectionClear;->owner:Lcom/eltechs/axs/xserver/Window;

    .line 21
    iput-object p3, p0, Lcom/eltechs/axs/xserver/events/SelectionClear;->selection:Lcom/eltechs/axs/xserver/Atom;

    return-void
.end method


# virtual methods
.method public getOwner()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionClear;->owner:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getSelection()Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/SelectionClear;->selection:Lcom/eltechs/axs/xserver/Atom;

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/eltechs/axs/xserver/events/SelectionClear;->timestamp:I

    return v0
.end method
