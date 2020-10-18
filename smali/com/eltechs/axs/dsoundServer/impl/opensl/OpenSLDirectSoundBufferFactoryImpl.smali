.class public Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;
.super Ljava/lang/Object;
.source "OpenSLDirectSoundBufferFactoryImpl.java"

# interfaces
.implements Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBufferFactory;


# instance fields
.field private final engine:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "dsound-helpers"

    .line 19
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;->createOpenSLEngine()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;->engine:J

    .line 27
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;->engine:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to initialise OpenSL."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static native createOpenSLEngine()J
.end method

.method private static native destroyOpenSLEngine(J)V
.end method


# virtual methods
.method public createBuffer(Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;)Lcom/eltechs/axs/dsoundServer/impl/DirectSoundBuffer;
    .locals 3

    .line 38
    :try_start_0
    new-instance v0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;

    iget-wide v1, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;->engine:J

    invoke-interface {p1}, Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;->getContent()Ljava/nio/MappedByteBuffer;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferImpl;-><init>(JLjava/nio/MappedByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public destroy()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-wide v0, p0, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;->engine:J

    invoke-static {v0, v1}, Lcom/eltechs/axs/dsoundServer/impl/opensl/OpenSLDirectSoundBufferFactoryImpl;->destroyOpenSLEngine(J)V

    return-void
.end method
