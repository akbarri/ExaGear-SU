.class public Lcom/eltechs/axs/xserver/events/PropertyNotify;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "PropertyNotify.java"


# instance fields
.field private final delete:Z

.field private final name:Lcom/eltechs/axs/xserver/Atom;

.field private final timestamp:I

.field private final window:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;IZ)V
    .locals 1

    const/16 v0, 0x1c

    .line 34
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 36
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/PropertyNotify;->window:Lcom/eltechs/axs/xserver/Window;

    .line 37
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/PropertyNotify;->name:Lcom/eltechs/axs/xserver/Atom;

    .line 38
    iput p3, p0, Lcom/eltechs/axs/xserver/events/PropertyNotify;->timestamp:I

    .line 39
    iput-boolean p4, p0, Lcom/eltechs/axs/xserver/events/PropertyNotify;->delete:Z

    return-void
.end method


# virtual methods
.method public getName()Lcom/eltechs/axs/xserver/Atom;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/PropertyNotify;->name:Lcom/eltechs/axs/xserver/Atom;

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/eltechs/axs/xserver/events/PropertyNotify;->timestamp:I

    return v0
.end method

.method public getWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/PropertyNotify;->window:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public isDelete()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/events/PropertyNotify;->delete:Z

    return v0
.end method
