.class public Lcom/eltechs/axs/xserver/events/MapRequest;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "MapRequest.java"


# instance fields
.field private final mappedWindow:Lcom/eltechs/axs/xserver/Window;

.field private final parentWindow:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    const/16 v0, 0x14

    .line 21
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/MapRequest;->parentWindow:Lcom/eltechs/axs/xserver/Window;

    .line 24
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/MapRequest;->mappedWindow:Lcom/eltechs/axs/xserver/Window;

    return-void
.end method


# virtual methods
.method public getMappedWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/MapRequest;->mappedWindow:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getParentWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/MapRequest;->parentWindow:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method
