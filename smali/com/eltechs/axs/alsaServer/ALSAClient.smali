.class public Lcom/eltechs/axs/alsaServer/ALSAClient;
.super Ljava/lang/Object;
.source "ALSAClient.java"


# static fields
.field public static final MAX_CHANNELS:I = 0x2

.field public static final MAX_RATE:I = 0xbb80

.field public static final MIN_CHANNELS:I = 0x1

.field public static final MIN_RATE:I = 0x1f40


# instance fields
.field private final arrays:Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

.field private channels:I

.field private format:Lcom/eltechs/axs/alsaServer/ClientFormats;

.field private pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

.field private final pcmPlayersManager:Lcom/eltechs/axs/alsaServer/PCMPlayersManager;

.field private rate:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/alsaServer/PCMPlayersManager;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/eltechs/axs/alsaServer/ClientFormats;->U8:Lcom/eltechs/axs/alsaServer/ClientFormats;

    iput-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->format:Lcom/eltechs/axs/alsaServer/ClientFormats;

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->channels:I

    const/16 v0, 0x1f40

    .line 38
    iput v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->rate:I

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    .line 43
    new-instance v0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->arrays:Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

    .line 52
    iput-object p1, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayersManager:Lcom/eltechs/axs/alsaServer/PCMPlayersManager;

    return-void
.end method

.method private prepareAudioTrack()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayersManager:Lcom/eltechs/axs/alsaServer/PCMPlayersManager;

    iget v1, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->rate:I

    iget v2, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->channels:I

    iget-object v3, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->format:Lcom/eltechs/axs/alsaServer/ClientFormats;

    invoke-virtual {v0, v1, v2, v3}, Lcom/eltechs/axs/alsaServer/PCMPlayersManager;->createPCMPlayer(IILcom/eltechs/axs/alsaServer/ClientFormats;)Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    :cond_0
    return-void
.end method


# virtual methods
.method public drain()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    invoke-interface {v0}, Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;->drainBuffer()V

    :cond_0
    return-void
.end method

.method public pointer()I
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    invoke-interface {v0}, Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;->getPlayingPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayersManager:Lcom/eltechs/axs/alsaServer/PCMPlayersManager;

    iget-object v1, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/alsaServer/PCMPlayersManager;->deletePCMPlayer(Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;)V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    :cond_0
    return-void
.end method

.method public setChannels(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iput p1, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->channels:I

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setFormat(I)Z
    .locals 1

    .line 166
    invoke-static {p1}, Lcom/eltechs/axs/alsaServer/ClientFormats;->checkFormat(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 171
    :cond_0
    invoke-static {}, Lcom/eltechs/axs/alsaServer/ClientFormats;->values()[Lcom/eltechs/axs/alsaServer/ClientFormats;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->format:Lcom/eltechs/axs/alsaServer/ClientFormats;

    const/4 p1, 0x1

    return p1
.end method

.method public setRate(I)Z
    .locals 1

    const/16 v0, 0x1f40

    if-lt p1, v0, :cond_1

    const v0, 0xbb80

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iput p1, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->rate:I

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public start()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/eltechs/axs/alsaServer/ALSAClient;->prepareAudioTrack()V

    .line 84
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    invoke-interface {v0}, Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;->startPlaying()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    invoke-interface {v0}, Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;->pausePlaying()V

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    invoke-interface {v0}, Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;->flushBuffer()V

    :cond_0
    return-void
.end method

.method public writeDataToTrack(Ljava/nio/ByteBuffer;I)V
    .locals 3

    .line 118
    invoke-direct {p0}, Lcom/eltechs/axs/alsaServer/ALSAClient;->prepareAudioTrack()V

    .line 119
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->format:Lcom/eltechs/axs/alsaServer/ClientFormats;

    sget-object v1, Lcom/eltechs/axs/alsaServer/ClientFormats;->U8:Lcom/eltechs/axs/alsaServer/ClientFormats;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->arrays:Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

    invoke-virtual {v0, p2}, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->getByteArray(I)[B

    move-result-object v0

    .line 124
    invoke-virtual {p1, v0, v2, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 125
    iget-object p1, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    invoke-interface {p1, v0, v2, p2}, Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;->writeData([BII)V

    goto :goto_1

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->format:Lcom/eltechs/axs/alsaServer/ClientFormats;

    sget-object v1, Lcom/eltechs/axs/alsaServer/ClientFormats;->S16BE:Lcom/eltechs/axs/alsaServer/ClientFormats;

    if-ne v0, v1, :cond_1

    .line 130
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 133
    :cond_1
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 135
    :goto_0
    div-int/lit8 p2, p2, 0x2

    .line 136
    iget-object v0, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->arrays:Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;

    invoke-virtual {v0, p2}, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->getShortArray(I)[S

    move-result-object v0

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    invoke-virtual {p1, v0, v2, p2}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    .line 138
    iget-object p1, p0, Lcom/eltechs/axs/alsaServer/ALSAClient;->pcmPlayer:Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;

    invoke-interface {p1, v0, v2, p2}, Lcom/eltechs/axs/alsaServer/impl/PCMPlayer;->writeData([SII)V

    :cond_2
    :goto_1
    return-void
.end method
