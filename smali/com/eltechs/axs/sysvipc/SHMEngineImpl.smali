.class public Lcom/eltechs/axs/sysvipc/SHMEngineImpl;
.super Ljava/lang/Object;
.source "SHMEngineImpl.java"

# interfaces
.implements Lcom/eltechs/axs/sysvipc/SHMEngine;


# static fields
.field private static final SIZE_OF_INT32:I = 0x4

.field private static final SIZE_OF_INT64:I = 0x8


# instance fields
.field private final communicator:Lcom/eltechs/axs/sysvipc/Communicator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ipc-helpers"

    .line 24
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/eltechs/axs/sysvipc/SHMEngineImpl;->initialiseNativeParts()Z

    move-result v0

    const-string v1, "Managed and native parts of SHMEngineImpl do not match one another."

    .line 27
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/eltechs/axs/sysvipc/Communicator;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/sysvipc/Communicator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/eltechs/axs/sysvipc/SHMEngineImpl;->communicator:Lcom/eltechs/axs/sysvipc/Communicator;

    return-void
.end method

.method private static native initialiseNativeParts()Z
.end method

.method private native mapAshmemSegment(Ljava/io/FileDescriptor;JZ)Ljava/nio/MappedByteBuffer;
.end method

.method private native unmapAshmemSegment(Ljava/nio/MappedByteBuffer;J)V
.end method


# virtual methods
.method public attachSegment(IZ)Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;
    .locals 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 65
    :try_start_0
    new-array v0, v0, [B

    const/16 v2, 0xc

    .line 66
    new-array v2, v2, [B

    const/4 v3, 0x1

    .line 67
    new-array v3, v3, [Ljava/io/FileDescriptor;

    .line 69
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 70
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 72
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 73
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 77
    iget-object p1, p0, Lcom/eltechs/axs/sysvipc/SHMEngineImpl;->communicator:Lcom/eltechs/axs/sysvipc/Communicator;

    sget-object v4, Lcom/eltechs/axs/sysvipc/RequestCodes;->SHM_GET_SIZE_AND_FD:Lcom/eltechs/axs/sysvipc/RequestCodes;

    invoke-virtual {p1, v4, v0, v2, v3}, Lcom/eltechs/axs/sysvipc/Communicator;->communicate(Lcom/eltechs/axs/sysvipc/RequestCodes;[B[B[Ljava/io/FileDescriptor;)V

    .line 79
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 80
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    :cond_0
    const/4 p1, 0x0

    .line 87
    aget-object p1, v3, p1

    invoke-direct {p0, p1, v6, v7, p2}, Lcom/eltechs/axs/sysvipc/SHMEngineImpl;->mapAshmemSegment(Ljava/io/FileDescriptor;JZ)Ljava/nio/MappedByteBuffer;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 93
    :cond_1
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 95
    new-instance p2, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;

    invoke-direct {p2, p1, v6, v7}, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;-><init>(Ljava/nio/MappedByteBuffer;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    return-object v1
.end method

.method public detachSHMSegment(Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;)V
    .locals 3

    .line 105
    check-cast p1, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;

    .line 107
    invoke-virtual {p1}, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;->getContent()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    const-string v1, "Segment already detached"

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget-object v0, p1, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;->content:Ljava/nio/MappedByteBuffer;

    iget-wide v1, p1, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;->size:J

    invoke-direct {p0, v0, v1, v2}, Lcom/eltechs/axs/sysvipc/SHMEngineImpl;->unmapAshmemSegment(Ljava/nio/MappedByteBuffer;J)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p1, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;->content:Ljava/nio/MappedByteBuffer;

    const-wide/16 v0, -0x1

    .line 111
    iput-wide v0, p1, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;->size:J

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/eltechs/axs/sysvipc/SHMEngineImpl;->communicator:Lcom/eltechs/axs/sysvipc/Communicator;

    invoke-virtual {v0}, Lcom/eltechs/axs/sysvipc/Communicator;->close()V

    return-void
.end method
