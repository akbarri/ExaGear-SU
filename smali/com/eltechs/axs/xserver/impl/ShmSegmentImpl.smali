.class public Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;
.super Ljava/lang/Object;
.source "ShmSegmentImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/ShmSegment;


# instance fields
.field private final isWritable:Z

.field private final segment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

.field private final shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

.field private final xid:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/sysvipc/SHMEngine;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/errors/BadAccess;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    .line 32
    iput p2, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->xid:I

    .line 33
    iput-boolean p4, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->isWritable:Z

    const/4 p2, 0x0

    .line 35
    invoke-interface {p1, p3, p2}, Lcom/eltechs/axs/sysvipc/SHMEngine;->attachSegment(IZ)Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->segment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    .line 36
    iget-object p1, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->segment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadAccess;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadAccess;-><init>()V

    throw p1

    :cond_0
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->shmEngine:Lcom/eltechs/axs/sysvipc/SHMEngine;

    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->segment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/sysvipc/SHMEngine;->detachSHMSegment(Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;)V

    return-void
.end method

.method public getContent()Ljava/nio/MappedByteBuffer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->segment:Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;

    invoke-interface {v0}, Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;->getContent()Ljava/nio/MappedByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getXid()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->xid:I

    return v0
.end method

.method public isWritable()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/eltechs/axs/xserver/impl/ShmSegmentImpl;->isWritable:Z

    return v0
.end method
