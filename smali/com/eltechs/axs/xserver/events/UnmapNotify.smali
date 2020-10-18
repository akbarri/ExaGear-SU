.class public Lcom/eltechs/axs/xserver/events/UnmapNotify;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "UnmapNotify.java"


# instance fields
.field private final fromConfigure:Z

.field private final originatedAt:Lcom/eltechs/axs/xserver/Window;

.field private final unmappedWindow:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Z)V
    .locals 1

    const/16 v0, 0x12

    .line 23
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 25
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/UnmapNotify;->originatedAt:Lcom/eltechs/axs/xserver/Window;

    .line 26
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/UnmapNotify;->unmappedWindow:Lcom/eltechs/axs/xserver/Window;

    .line 27
    iput-boolean p3, p0, Lcom/eltechs/axs/xserver/events/UnmapNotify;->fromConfigure:Z

    return-void
.end method


# virtual methods
.method public getOriginatedAt()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/UnmapNotify;->originatedAt:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getUnmappedWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/UnmapNotify;->unmappedWindow:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public isFromConfigure()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/events/UnmapNotify;->fromConfigure:Z

    return v0
.end method
