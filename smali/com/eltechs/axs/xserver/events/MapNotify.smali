.class public Lcom/eltechs/axs/xserver/events/MapNotify;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "MapNotify.java"


# instance fields
.field private final mappedWindow:Lcom/eltechs/axs/xserver/Window;

.field private final originatedAt:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    const/16 v0, 0x13

    .line 21
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/MapNotify;->originatedAt:Lcom/eltechs/axs/xserver/Window;

    .line 24
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/MapNotify;->mappedWindow:Lcom/eltechs/axs/xserver/Window;

    return-void
.end method


# virtual methods
.method public getMappedWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/MapNotify;->mappedWindow:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getOriginatedAt()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/MapNotify;->originatedAt:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method
