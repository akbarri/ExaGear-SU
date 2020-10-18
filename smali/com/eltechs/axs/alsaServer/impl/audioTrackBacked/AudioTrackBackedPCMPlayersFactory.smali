.class public Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayersFactory;
.super Ljava/lang/Object;
.source "AudioTrackBackedPCMPlayersFactory.java"

# interfaces
.implements Lcom/eltechs/axs/alsaServer/impl/PCMPlayersFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(IILcom/eltechs/axs/alsaServer/ClientFormats;)Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;
    .locals 8

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x4

    :goto_0
    move v4, p2

    goto :goto_1

    :cond_0
    const/16 p2, 0xc

    goto :goto_0

    .line 23
    :goto_1
    sget-object p2, Lcom/eltechs/axs/alsaServer/ClientFormats;->U8:Lcom/eltechs/axs/alsaServer/ClientFormats;

    if-ne p3, p2, :cond_1

    const/4 p2, 0x3

    :goto_2
    move v5, p2

    goto :goto_3

    :cond_1
    const/4 p2, 0x2

    goto :goto_2

    .line 31
    :goto_3
    invoke-static {p1, v4, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v6

    .line 33
    new-instance p2, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x1

    move-object v1, p2

    move v3, p1

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 37
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 39
    new-instance p1, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/alsaServer/impl/audioTrackBacked/AudioTrackBackedPCMPlayer;-><init>(Landroid/media/AudioTrack;)V

    return-object p1
.end method
