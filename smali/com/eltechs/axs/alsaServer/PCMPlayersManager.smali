.class public Lcom/eltechs/axs/alsaServer/PCMPlayersManager;
.super Ljava/lang/Object;
.source "PCMPlayersManager.java"


# instance fields
.field private pcmPlayersFactory:Lcom/eltechs/axs/alsaServer/impl/PCMPlayersFactory;

.field private tracks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/alsaServer/impl/PCMPlayersFactory;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/alsaServer/PCMPlayersManager;->tracks:Ljava/util/Collection;

    .line 26
    iput-object p1, p0, Lcom/eltechs/axs/alsaServer/PCMPlayersManager;->pcmPlayersFactory:Lcom/eltechs/axs/alsaServer/impl/PCMPlayersFactory;

    return-void
.end method


# virtual methods
.method public createPCMPlayer(IILcom/eltechs/axs/alsaServer/ClientFormats;)Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/PCMPlayersManager;->pcmPlayersFactory:Lcom/eltechs/axs/alsaServer/impl/PCMPlayersFactory;

    invoke-interface {v0, p1, p2, p3}, Lcom/eltechs/axs/alsaServer/impl/PCMPlayersFactory;->create(IILcom/eltechs/axs/alsaServer/ClientFormats;)Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/eltechs/axs/alsaServer/PCMPlayersManager;->tracks:Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public deletePCMPlayer(Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/PCMPlayersManager;->tracks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 54
    invoke-interface {p1}, Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;->stopAndReleaseResources()V

    return-void
.end method
