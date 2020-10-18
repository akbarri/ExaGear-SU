.class public Lcom/eltechs/axs/proto/output/replies/VisualConfig;
.super Ljava/lang/Object;
.source "VisualConfig.java"


# annotations
.annotation runtime Lcom/eltechs/axs/proto/output/POD;
    value = {
        "visualId",
        "visualClass",
        "isRGBA",
        "bitsRed",
        "bitsGreen",
        "bitsBlue",
        "bitsAlpha",
        "accBitsRed",
        "accBitsGreen",
        "accBitsBlue",
        "accBitsAlpha",
        "isDoubleBuffered",
        "isStereo",
        "bitsRGB",
        "bitsDepth",
        "bitsStencil",
        "auxBuffersNum",
        "level",
        "props"
    }
.end annotation


# instance fields
.field public final accBitsAlpha:I

.field public final accBitsBlue:I

.field public final accBitsGreen:I

.field public final accBitsRed:I

.field public final auxBuffersNum:I

.field public final bitsAlpha:I

.field public final bitsBlue:I

.field public final bitsDepth:I

.field public final bitsGreen:I

.field public final bitsRGB:I

.field public final bitsRed:I

.field public final bitsStencil:I

.field public final isDoubleBuffered:I

.field public final isRGBA:I

.field public final isStereo:I

.field public final level:I

.field public final props:[I

.field public final visualClass:I

.field public final visualId:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V
    .locals 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x16

    .line 41
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->props:[I

    .line 58
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getId()I

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->visualId:I

    .line 59
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->TRUE_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->visualClass:I

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->isRGBA:I

    .line 61
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getRedMask()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    iput v1, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->bitsRed:I

    .line 62
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getGreenMask()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    iput v1, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->bitsGreen:I

    .line 63
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getBlueMask()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    iput v1, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->bitsBlue:I

    .line 64
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getBitsPerRgbValue()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result v1

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getBitsPerRgbValue()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput v1, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->bitsAlpha:I

    .line 65
    iput v3, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->accBitsRed:I

    .line 66
    iput v3, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->accBitsGreen:I

    .line 67
    iput v3, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->accBitsBlue:I

    .line 68
    iput v3, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->accBitsAlpha:I

    .line 69
    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->isDoubleBuffered:I

    .line 70
    iput v3, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->isStereo:I

    .line 71
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getBitsPerRgbValue()I

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->bitsRGB:I

    .line 72
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getDepth()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->bitsDepth:I

    .line 73
    iput v3, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->bitsStencil:I

    .line 74
    iput v3, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->auxBuffersNum:I

    .line 75
    iput v3, p0, Lcom/eltechs/axs/proto/output/replies/VisualConfig;->level:I

    return-void

    :array_0
    .array-data 4
        0x20
        0x8000
        0x23
        0x8000
        0x25
        -0x1
        0x26
        -0x1
        0x27
        -0x1
        0x28
        -0x1
        0x24
        -0x1
        0x186a1
        0x0
        0x186a0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
