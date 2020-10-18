.class public Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;
.super Ljava/lang/Object;
.source "ImageFormat.java"


# instance fields
.field private final bitsPerPixel:I

.field private final depth:I

.field private final scanlinePad:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;->depth:I

    .line 20
    iput p2, p0, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;->bitsPerPixel:I

    .line 21
    iput p3, p0, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;->scanlinePad:I

    return-void
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;->bitsPerPixel:I

    return v0
.end method

.method public getDepth()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;->depth:I

    return v0
.end method

.method public getScanlinePad()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;->scanlinePad:I

    return v0
.end method
