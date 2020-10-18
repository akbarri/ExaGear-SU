.class public Lcom/eltechs/axs/proto/output/replies/VisualType;
.super Ljava/lang/Object;
.source "VisualType.java"


# annotations
.annotation runtime Lcom/eltechs/axs/proto/output/POD;
    value = {
        "visualId",
        "visualClass",
        "bitsPerRgbValue",
        "colormapEntries",
        "redMask",
        "greenMask",
        "blueMask",
        "unused"
    }
.end annotation


# instance fields
.field public final bitsPerRgbValue:B

.field public final blueMask:I

.field public final colormapEntries:S

.field public final greenMask:I

.field public final redMask:I

.field public final unused:I

.field public final visualClass:B

.field public final visualId:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualType;->unused:I

    .line 27
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->isDisplayable()Z

    move-result v0

    const-string v1, "Only displayable visuals must be reported to a client as X Visuals."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getId()I

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualType;->visualId:I

    .line 30
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->TRUE_COLOR:Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/VisualClass;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualType;->visualClass:B

    .line 32
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getBitsPerRgbValue()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualType;->bitsPerRgbValue:B

    const/16 v0, 0x100

    .line 33
    iput-short v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualType;->colormapEntries:S

    .line 34
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getRedMask()I

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualType;->redMask:I

    .line 35
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getGreenMask()I

    move-result v0

    iput v0, p0, Lcom/eltechs/axs/proto/output/replies/VisualType;->greenMask:I

    .line 36
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->getBlueMask()I

    move-result p1

    iput p1, p0, Lcom/eltechs/axs/proto/output/replies/VisualType;->blueMask:I

    return-void
.end method
