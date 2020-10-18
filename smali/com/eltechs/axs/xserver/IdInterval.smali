.class public Lcom/eltechs/axs/xserver/IdInterval;
.super Ljava/lang/Object;
.source "IdInterval.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/eltechs/axs/xserver/IdInterval;",
        ">;"
    }
.end annotation


# instance fields
.field private final idBase:I

.field private final idMask:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/eltechs/axs/xserver/IdInterval;->idBase:I

    .line 23
    iput p2, p0, Lcom/eltechs/axs/xserver/IdInterval;->idMask:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/eltechs/axs/xserver/IdInterval;)I
    .locals 2

    .line 58
    iget v0, p0, Lcom/eltechs/axs/xserver/IdInterval;->idBase:I

    iget v1, p1, Lcom/eltechs/axs/xserver/IdInterval;->idBase:I

    if-ge v0, v1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 62
    :cond_0
    iget v0, p0, Lcom/eltechs/axs/xserver/IdInterval;->idBase:I

    iget p1, p1, Lcom/eltechs/axs/xserver/IdInterval;->idBase:I

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/eltechs/axs/xserver/IdInterval;

    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/IdInterval;->compareTo(Lcom/eltechs/axs/xserver/IdInterval;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 78
    instance-of v0, p1, Lcom/eltechs/axs/xserver/IdInterval;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 83
    :cond_0
    check-cast p1, Lcom/eltechs/axs/xserver/IdInterval;

    .line 84
    iget v0, p0, Lcom/eltechs/axs/xserver/IdInterval;->idBase:I

    iget v2, p1, Lcom/eltechs/axs/xserver/IdInterval;->idBase:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/eltechs/axs/xserver/IdInterval;->idMask:I

    iget p1, p1, Lcom/eltechs/axs/xserver/IdInterval;->idMask:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIdBase()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/eltechs/axs/xserver/IdInterval;->idBase:I

    return v0
.end method

.method public getIdMask()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/eltechs/axs/xserver/IdInterval;->idMask:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 95
    iget v0, p0, Lcom/eltechs/axs/xserver/IdInterval;->idBase:I

    iget v1, p0, Lcom/eltechs/axs/xserver/IdInterval;->idMask:I

    or-int/2addr v0, v1

    return v0
.end method

.method public isInInterval(I)Z
    .locals 2

    .line 44
    iget v0, p0, Lcom/eltechs/axs/xserver/IdInterval;->idMask:I

    or-int/2addr p1, v0

    iget v0, p0, Lcom/eltechs/axs/xserver/IdInterval;->idBase:I

    iget v1, p0, Lcom/eltechs/axs/xserver/IdInterval;->idMask:I

    or-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
