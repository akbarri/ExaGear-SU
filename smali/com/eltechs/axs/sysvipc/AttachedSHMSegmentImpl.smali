.class public Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;
.super Ljava/lang/Object;
.source "AttachedSHMSegmentImpl.java"

# interfaces
.implements Lcom/eltechs/axs/sysvipc/AttachedSHMSegment;


# instance fields
.field content:Ljava/nio/MappedByteBuffer;

.field size:J


# direct methods
.method constructor <init>(Ljava/nio/MappedByteBuffer;J)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;->content:Ljava/nio/MappedByteBuffer;

    .line 22
    iput-wide p2, p0, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;->size:J

    return-void
.end method


# virtual methods
.method public getContent()Ljava/nio/MappedByteBuffer;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/eltechs/axs/sysvipc/AttachedSHMSegmentImpl;->content:Ljava/nio/MappedByteBuffer;

    return-object v0
.end method
