.class public abstract Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;
.super Ljava/lang/Object;
.source "ProtoHelpers.java"


# static fields
.field public static final SIZE_OF_INT:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateLengthInWords(I)I
    .locals 0

    .line 50
    div-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static calculatePad(I)I
    .locals 1

    .line 39
    invoke-static {p0}, Lcom/eltechs/axs/proto/input/impl/ProtoHelpers;->roundUpLength4(I)I

    move-result v0

    sub-int/2addr v0, p0

    return v0
.end method

.method public static roundUpLength4(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x3

    .line 27
    div-int/lit8 p0, p0, 0x4

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method
