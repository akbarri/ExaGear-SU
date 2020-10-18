.class public Lcom/eltechs/axs/xserver/events/CreateNotify;
.super Lcom/eltechs/axs/xserver/events/Event;
.source "CreateNotify.java"


# instance fields
.field private final parent:Lcom/eltechs/axs/xserver/Window;

.field private final window:Lcom/eltechs/axs/xserver/Window;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;)V
    .locals 1

    const/16 v0, 0x10

    .line 26
    invoke-direct {p0, v0}, Lcom/eltechs/axs/xserver/events/Event;-><init>(I)V

    .line 28
    iput-object p1, p0, Lcom/eltechs/axs/xserver/events/CreateNotify;->parent:Lcom/eltechs/axs/xserver/Window;

    .line 29
    iput-object p2, p0, Lcom/eltechs/axs/xserver/events/CreateNotify;->window:Lcom/eltechs/axs/xserver/Window;

    return-void
.end method


# virtual methods
.method public getParent()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/CreateNotify;->parent:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method

.method public getWindow()Lcom/eltechs/axs/xserver/Window;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/xserver/events/CreateNotify;->window:Lcom/eltechs/axs/xserver/Window;

    return-object v0
.end method
