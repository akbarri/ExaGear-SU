.class public Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;
.super Ljava/lang/Object;
.source "SelectionsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;
    }
.end annotation


# instance fields
.field private final selections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/eltechs/axs/xserver/Atom;",
            "Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final windowDestroyListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->selections:Ljava/util/Map;

    .line 19
    new-instance v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$1;-><init>(Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;)V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->windowDestroyListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    .line 56
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getWindowsManager()Lcom/eltechs/axs/xserver/WindowsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->windowDestroyListener:Lcom/eltechs/axs/xserver/WindowLifecycleListener;

    invoke-interface {p1, v0}, Lcom/eltechs/axs/xserver/WindowsManager;->addWindowLifecycleListener(Lcom/eltechs/axs/xserver/WindowLifecycleListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;)Ljava/util/Map;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->selections:Ljava/util/Map;

    return-object p0
.end method

.method private getSelectionInfo(Lcom/eltechs/axs/xserver/Atom;)Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->selections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;-><init>(Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$1;)V

    .line 49
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->selections:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public convertSelection(Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/client/XClient;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;I)V
    .locals 9

    .line 93
    invoke-direct {p0, p3}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->getSelectionInfo(Lcom/eltechs/axs/xserver/Atom;)Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;

    move-result-object v0

    .line 95
    iget-object v1, v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->owner:Lcom/eltechs/axs/xserver/Window;

    if-eqz v1, :cond_0

    .line 98
    new-instance p2, Lcom/eltechs/axs/xserver/events/SelectionRequest;

    iget-object v4, v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->owner:Lcom/eltechs/axs/xserver/Window;

    move-object v2, p2

    move v3, p6

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/eltechs/axs/xserver/events/SelectionRequest;-><init>(ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;)V

    .line 99
    iget-object p1, v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->client:Lcom/eltechs/axs/xserver/client/XClient;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClient;->createEventSender()Lcom/eltechs/axs/proto/output/XEventSender;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/eltechs/axs/proto/output/XEventSender;->sendEvent(Lcom/eltechs/axs/xserver/events/Event;)V

    goto :goto_0

    .line 103
    :cond_0
    new-instance p5, Lcom/eltechs/axs/xserver/events/SelectionNotify;

    const/4 v5, 0x0

    move-object v0, p5

    move v1, p6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xserver/events/SelectionNotify;-><init>(ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Atom;)V

    .line 104
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/client/XClient;->createEventSender()Lcom/eltechs/axs/proto/output/XEventSender;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/eltechs/axs/proto/output/XEventSender;->sendEvent(Lcom/eltechs/axs/xserver/events/Event;)V

    :goto_0
    return-void
.end method

.method public getSelectionOwner(Lcom/eltechs/axs/xserver/Atom;)Lcom/eltechs/axs/xserver/Window;
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->getSelectionInfo(Lcom/eltechs/axs/xserver/Atom;)Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->owner:Lcom/eltechs/axs/xserver/Window;

    return-object p1
.end method

.method public setSelectionOwner(Lcom/eltechs/axs/xserver/Atom;Lcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/client/XClient;I)V
    .locals 3

    if-nez p4, :cond_0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int p4, v0

    .line 71
    :cond_0
    invoke-direct {p0, p1}, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl;->getSelectionInfo(Lcom/eltechs/axs/xserver/Atom;)Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;

    move-result-object v0

    .line 75
    iget-object v1, v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->owner:Lcom/eltechs/axs/xserver/Window;

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->client:Lcom/eltechs/axs/xserver/client/XClient;

    if-eq v1, p3, :cond_2

    .line 77
    :cond_1
    new-instance v1, Lcom/eltechs/axs/xserver/events/SelectionClear;

    iget-object v2, v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->owner:Lcom/eltechs/axs/xserver/Window;

    invoke-direct {v1, p4, v2, p1}, Lcom/eltechs/axs/xserver/events/SelectionClear;-><init>(ILcom/eltechs/axs/xserver/Window;Lcom/eltechs/axs/xserver/Atom;)V

    .line 78
    iget-object p1, v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->client:Lcom/eltechs/axs/xserver/client/XClient;

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/client/XClient;->createEventSender()Lcom/eltechs/axs/proto/output/XEventSender;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/eltechs/axs/proto/output/XEventSender;->sendEvent(Lcom/eltechs/axs/xserver/events/Event;)V

    .line 81
    :cond_2
    iput-object p2, v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->owner:Lcom/eltechs/axs/xserver/Window;

    .line 82
    iput-object p3, v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->client:Lcom/eltechs/axs/xserver/client/XClient;

    .line 83
    iput p4, v0, Lcom/eltechs/axs/xserver/impl/SelectionsManagerImpl$SelectionInfo;->lastChangeTime:I

    return-void
.end method
