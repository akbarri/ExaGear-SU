.class public Lcom/eltechs/axs/xserver/events/DestroyNotify;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "DestroyNotify.java"


# instance fields
.field private final deletedWindow:Lcom/eltechs/axs/xserver/Window;

.field private final originatedAt:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    const/16 v0, 0x11

    .line 27
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/DestroyNotify;->originatedAt:Lcom/eltechs/axs/xserver/Window;

    .line 30
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/DestroyNotify;->deletedWindow:Lcom/eltechs/axs/xserver/Window;

    return-void
.end method


# virtual methods
.method public getDeletedWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/DestroyNotify;->deletedWindow:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getOriginatedAt()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/DestroyNotify;->originatedAt:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method
