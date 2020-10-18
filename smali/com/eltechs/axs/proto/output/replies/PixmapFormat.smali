.class public Lcom/eltechs/axs/proto/output/replies/PixmapFormat;
.super Ljava/lang/Object;
.source "PixmapFormat.java"


# annotations
.annotation runtime Lcom/eltechs/axs/proto/output/POD;
    value = {
        "depth",
        "bitsPerPixel",
        "scanlinePad",
        "unused"
    }
.end annotation


# instance fields
.field public final bitsPerPixel:B

.field public final depth:B

.field public final scanlinePad:B

.field public final unused:[B


# direct methods
.method public constructor <init>(BBB)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 17
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/eltechs/axs/proto/output/replies/PixmapFormat;->unused:[B

    .line 21
    iput-byte p1, p0, Lcom/eltechs/axs/proto/output/replies/PixmapFormat;->depth:B

    .line 22
    iput-byte p2, p0, Lcom/eltechs/axs/proto/output/replies/PixmapFormat;->bitsPerPixel:B

    .line 23
    iput-byte p3, p0, Lcom/eltechs/axs/proto/output/replies/PixmapFormat;->scanlinePad:B

    return-void
.end method
