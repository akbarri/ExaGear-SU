.class public Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;
.super Ljava/lang/Object;
.source "OpenSLDirectSoundBufferImpl.java"

# interfaces
.implements Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;


# instance fields
.field private final player:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dsound-helpers"

    .line 22
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/nio/MappedByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1, p2, p3}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->createPlayer(JLjava/nio/MappedByteBuffer;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    .line 30
    iget-wide p1, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to create an OpenSL player."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    return-void
.end method

.method private static native createPlayer(JLjava/nio/MappedByteBuffer;)J
.end method

.method private static native destroyPlayer(J)V
.end method

.method private static native playImpl(JZ)V
.end method

.method private static native recalcVolpanImpl(JII)V
.end method

.method private static native resumePlaybackImpl(J)V
.end method

.method private static native setCurrentPositionImpl(JI)Z
.end method

.method private static native setEventCallbackImpl(JLcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;)V
.end method

.method private static native setNotificationPositionsImpl(J[I[I)V
.end method

.method private static native stopImpl(J)V
.end method

.method private static native suspendPlaybackImpl(J)V
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    invoke-static {v0, v1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->destroyPlayer(J)V

    return-void
.end method

.method public play(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 42
    new-array v0, v0, [Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    sget-object v1, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->LOOPING:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->TERMINATEBY_DISTANCE:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->TERMINATEBY_PRIORITY:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->TERMINATEBY_TIME:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->of([Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSubsetOf(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "The only supported flag of IDirectSoundBuffer8::Play() is DSBPLAY_LOOPING"

    .line 48
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet(Ljava/lang/String;)V

    .line 51
    :cond_0
    sget-object v0, Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;->LOOPING:Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result p1

    .line 52
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    invoke-static {v0, v1, p1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->playImpl(JZ)V

    return-void
.end method

.method public recalcVolpan(II)V
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    invoke-static {v0, v1, p1, p2}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->recalcVolpanImpl(JII)V

    return-void
.end method

.method public resumePlayback()V
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    invoke-static {v0, v1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->resumePlaybackImpl(J)V

    return-void
.end method

.method public setCurrentPosition(I)Z
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    invoke-static {v0, v1, p1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->setCurrentPositionImpl(JI)Z

    move-result p1

    return p1
.end method

.method public setEventCallback(Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;)V
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    invoke-static {v0, v1, p1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->setEventCallbackImpl(JLcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;)V

    return-void
.end method

.method public setNotificationPositions([I[I)V
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    invoke-static {v0, v1, p1, p2}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->setNotificationPositionsImpl(J[I[I)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    invoke-static {v0, v1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->stopImpl(J)V

    return-void
.end method

.method public suspendPlayback()V
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->player:J

    invoke-static {v0, v1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;->suspendPlaybackImpl(J)V

    return-void
.end method
