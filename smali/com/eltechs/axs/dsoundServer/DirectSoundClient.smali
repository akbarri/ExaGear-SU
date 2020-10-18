.class public Lcom/eltechs/axs/dsoundServer/DirectSoundClient;
.super Ljava/lang/Object;
.source "DirectSoundClient.java"


# static fields
.field private static final MAGIC:I = 0x444e5344

.field private static final MIN_SIZE_OF_SHM_SEGMENT:I = 0x40

.field private static final SIZE_OF_INT:I = 0x4


# instance fields
.field private final bufferFactory:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;

.field private final shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

.field private soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

.field private underlyingShmSegment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/sysvipc/SHMEngine;Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    .line 52
    iput-object p2, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->bufferFactory:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;

    return-void
.end method

.method private checkShmSegmentFormat(Ljava/nio/MappedByteBuffer;)Z
    .locals 3

    .line 88
    invoke-virtual {p1}, Ljava/nio/MappedByteBuffer;->limit()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-gt v0, v2, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-virtual {p1, v1}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result p1

    const v0, 0x444e5344

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public attach(I)Z
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->underlyingShmSegment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Can\'t attach a DirectSoundClient twice."

    invoke-static {v0, v3}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    invoke-interface {v0, p1, v1}, Lcom/eltechs/axs/sysvipc/SHMEngine;->attachSegment(IZ)Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    .line 65
    :cond_1
    invoke-interface {p1}, Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;->getContent()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->checkShmSegmentFormat(Ljava/nio/MappedByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/sysvipc/SHMEngine;->detachSHMSegment(Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;)V

    return v2

    .line 71
    :cond_2
    iput-object p1, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->underlyingShmSegment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    .line 72
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->bufferFactory:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;->createBuffer(Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;)Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    .line 74
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    if-nez v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/sysvipc/SHMEngine;->detachSHMSegment(Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;)V

    const/4 p1, 0x0

    .line 77
    iput-object p1, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->underlyingShmSegment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    return v2

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    invoke-static {}, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->getInstance()Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;->setEventCallback(Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;)V

    return v1
.end method

.method public destroy()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->underlyingShmSegment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    invoke-interface {v0}, Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;->destroy()V

    .line 156
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    iget-object v1, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->underlyingShmSegment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/sysvipc/SHMEngine;->detachSHMSegment(Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;)V

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    .line 159
    iput-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->underlyingShmSegment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    .line 162
    :cond_0
    invoke-static {p0}, Lcom/eltechs/axs/dsoundServer/DirectSoundGlobalNotifier;->handleClientDestroyed(Lcom/eltechs/axs/dsoundServer/DirectSoundClient;)V

    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->underlyingShmSegment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public play(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "Lcom/eltechs/axs/dsoundServer/impl/PlayFlags;",
            ">;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;->play(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V

    return-void
.end method

.method public recalcVolpan(II)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;->recalcVolpan(II)V

    return-void
.end method

.method public resumePlayback()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    invoke-interface {v0}, Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;->resumePlayback()V

    :cond_0
    return-void
.end method

.method public setCurrentPosition(I)Z
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;->setCurrentPosition(I)Z

    move-result p1

    return p1
.end method

.method public setNotificationPositions([I[I)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    invoke-interface {v0, p1, p2}, Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;->setNotificationPositions([I[I)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    invoke-interface {v0}, Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;->stop()V

    return-void
.end method

.method public suspendPlayback()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/eltechs/axs/dsoundServer/DirectSoundClient;->soundBuffer:Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;

    invoke-interface {v0}, Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;->suspendPlayback()V

    :cond_0
    return-void
.end method
