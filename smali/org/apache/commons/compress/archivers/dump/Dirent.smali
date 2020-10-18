.class Lorg/apache/commons/compress/archivers/dump/Dirent;
.super Ljava/lang/Object;
.source "Dirent.java"


# instance fields
.field private final ino:I

.field private final name:Ljava/lang/String;

.field private final parentIno:I

.field private final type:I


# direct methods
.method constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    .line 40
    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->parentIno:I

    .line 41
    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->type:I

    .line 42
    iput-object p4, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getIno()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    return-object v0
.end method

.method getParentIno()I
    .locals 1

    .line 58
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->parentIno:I

    return v0
.end method

.method getType()I
    .locals 1

    .line 66
    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->type:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "[%d]: %s"

    const/4 v1, 0x2

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
