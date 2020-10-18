.class public Lcom/eltechs/axs/proto/output/replies/ServerInfo;
.super Ljava/lang/Object;
.source "ServerInfo.java"


# annotations
.annotation runtime Lcom/eltechs/axs/proto/output/POD;
    value = {
        "success",
        "unused0",
        "majorProtocolVersion",
        "minorProtocolVersion",
        "additionalDataLength",
        "releaseNumber",
        "resourceIdBase",
        "resourceIdMask",
        "motionBufferSize",
        "vendorNameLength",
        "maximumRequestLength",
        "screensCount",
        "pixmapFormatsCount",
        "imageByteOrder",
        "bitmapFormatBitOrder",
        "bitmapFormatScanlineUnit",
        "bitmapFormatScanlinePad",
        "minKeycode",
        "maxKeycode",
        "unused1",
        "vendorName",
        "pixmapFormats",
        "roots"
    }
.end annotation


# instance fields
.field public final additionalDataLength:S

.field public final bitmapFormatBitOrder:B

.field public final bitmapFormatScanlinePad:B

.field public final bitmapFormatScanlineUnit:B

.field public final imageByteOrder:B

.field public final majorProtocolVersion:S

.field public final maxKeycode:B

.field public final maximumRequestLength:S

.field public final minKeycode:B

.field public final minorProtocolVersion:S

.field public final motionBufferSize:I

.field public final pixmapFormats:[Lcom/eltechs/axs/proto/output/replies/PixmapFormat;

.field public final pixmapFormatsCount:B

.field public final releaseNumber:I

.field public final resourceIdBase:I

.field public final resourceIdMask:I

.field public final roots:[Lcom/eltechs/axs/proto/output/replies/Screen;

.field public final screensCount:B

.field public final success:B

.field public final unused0:B

.field public final unused1:I

.field public final vendorName:Ljava/lang/String;

.field public final vendorNameLength:S


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xserver/IdInterval;)V
    .locals 7

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-byte v0, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->success:B

    const/4 v1, 0x0

    .line 39
    iput-byte v1, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->unused0:B

    const/16 v2, 0xb

    .line 41
    iput-short v2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->majorProtocolVersion:S

    .line 42
    iput-short v1, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->minorProtocolVersion:S

    .line 46
    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->releaseNumber:I

    const/16 v2, 0x100

    .line 51
    iput v2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->motionBufferSize:I

    const/4 v2, -0x1

    .line 55
    iput-short v2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->maximumRequestLength:S

    .line 57
    iput-byte v0, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->screensCount:B

    .line 60
    iput-byte v1, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->imageByteOrder:B

    .line 61
    iput-byte v1, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->bitmapFormatBitOrder:B

    const/16 v3, 0x20

    .line 63
    iput-byte v3, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->bitmapFormatScanlineUnit:B

    .line 64
    iput-byte v3, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->bitmapFormatScanlinePad:B

    const/16 v3, 0x8

    .line 66
    iput-byte v3, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->minKeycode:B

    .line 67
    iput-byte v2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->maxKeycode:B

    .line 69
    iput v1, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->unused1:I

    .line 79
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/IdInterval;->getIdBase()I

    move-result v2

    iput v2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->resourceIdBase:I

    .line 80
    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/IdInterval;->getIdMask()I

    move-result p2

    iput p2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->resourceIdMask:I

    const-string p2, "Elbrus Technologies, LLC"

    .line 82
    iput-object p2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->vendorName:Ljava/lang/String;

    .line 83
    iget-object p2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->vendorName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-short p2, p2

    iput-short p2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->vendorNameLength:S

    .line 85
    new-array p2, v0, [Lcom/eltechs/axs/proto/output/replies/Screen;

    new-instance v0, Lcom/eltechs/axs/proto/output/replies/Screen;

    invoke-direct {v0, p1}, Lcom/eltechs/axs/proto/output/replies/Screen;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    aput-object v0, p2, v1

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->roots:[Lcom/eltechs/axs/proto/output/replies/Screen;

    .line 87
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getDrawablesManager()Lcom/eltechs/axs/xserver/DrawablesManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/DrawablesManager;->getSupportedImageFormats()Ljava/util/Collection;

    move-result-object p1

    .line 88
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p2

    int-to-byte p2, p2

    iput-byte p2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->pixmapFormatsCount:B

    .line 89
    iget-byte p2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->pixmapFormatsCount:B

    new-array p2, p2, [Lcom/eltechs/axs/proto/output/replies/PixmapFormat;

    iput-object p2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->pixmapFormats:[Lcom/eltechs/axs/proto/output/replies/PixmapFormat;

    .line 91
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    .line 93
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->pixmapFormats:[Lcom/eltechs/axs/proto/output/replies/PixmapFormat;

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/eltechs/axs/proto/output/replies/PixmapFormat;

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;->getDepth()I

    move-result v5

    int-to-byte v5, v5

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;->getBitsPerPixel()I

    move-result v6

    int-to-byte v6, v6

    invoke-virtual {p2}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;->getScanlinePad()I

    move-result p2

    int-to-byte p2, p2

    invoke-direct {v4, v5, v6, p2}, Lcom/eltechs/axs/proto/output/replies/PixmapFormat;-><init>(BBB)V

    aput-object v4, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 96
    iget-byte p2, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->pixmapFormatsCount:B

    mul-int/2addr p1, p2

    add-int/2addr v3, p1

    iget-short p1, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->vendorNameLength:S

    .line 98
    invoke-static {p1}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->roundUpLength4(I)I

    move-result p1

    invoke-static {p1}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculateLengthInWords(I)I

    move-result p1

    add-int/2addr v3, p1

    iget-object p1, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->roots:[Lcom/eltechs/axs/proto/output/replies/Screen;

    .line 99
    invoke-static {p1}, Lcom/eltechs/axs/proto/output/PODWriter;->getOnWireLength(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->calculateLengthInWords(I)I

    move-result p1

    add-int/2addr v3, p1

    int-to-short p1, v3

    iput-short p1, p0, Lcom/eltechs/axs/proto/output/replies/ServerInfo;->additionalDataLength:S

    return-void
.end method
