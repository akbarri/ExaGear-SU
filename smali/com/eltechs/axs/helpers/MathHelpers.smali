.class public abstract Lcom/eltechs/axs/helpers/MathHelpers;
.super Ljava/lang/Object;
.source "MathHelpers.java"


# static fields
.field static final log2:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/eltechs/axs/helpers/MathHelpers;->log2:D

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lowerPOT(I)I
    .locals 6

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Non positive number"

    .line 24
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p0

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    sget-wide v4, Lcom/eltechs/axs/helpers/MathHelpers;->log2:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    return p0
.end method

.method public static upperPOT(I)I
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/eltechs/axs/helpers/MathHelpers;->lowerPOT(I)I

    move-result v0

    if-ge v0, p0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method
