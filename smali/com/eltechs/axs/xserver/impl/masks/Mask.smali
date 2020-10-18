.class public Lcom/eltechs/axs/xserver/impl/masks/Mask;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F::",
        "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final flagsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TF;>;"
        }
    .end annotation
.end field

.field private value:I


# direct methods
.method private constructor <init>(ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TF;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    .line 20
    iput-object p2, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->flagsClass:Ljava/lang/Class;

    return-void
.end method

.method public static create(Ljava/lang/Class;I)Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;I)",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;"
        }
    .end annotation

    .line 25
    invoke-static {p0, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isValueValid(Ljava/lang/Class;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    new-instance v0, Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-direct {v0, p1, p0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;-><init>(ILjava/lang/Class;)V

    return-object v0
.end method

.method public static emptyMask(Ljava/lang/Class;)Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;)",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/eltechs/axs/xserver/impl/masks/Mask;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;-><init>(ILjava/lang/Class;)V

    return-object v0
.end method

.method public static fullMask(Ljava/lang/Class;)Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;)",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;

    const/4 v1, 0x0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 37
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;->flagValue()I

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    new-instance v0, Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-direct {v0, v3, p0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;-><init>(ILjava/lang/Class;)V

    return-object v0
.end method

.method private static isValueValid(Ljava/lang/Class;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;I)Z"
        }
    .end annotation

    .line 62
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;

    const/4 v0, 0x0

    array-length v1, p0

    move v2, p1

    move p1, v0

    :goto_0
    if-ge p1, v1, :cond_0

    aget-object v3, p0, p1

    .line 64
    invoke-interface {v3}, Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;->flagValue()I

    move-result v3

    not-int v3, v3

    and-int/2addr v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static mergeMasksOR(Lcom/eltechs/axs/xserver/impl/masks/Mask;Lcom/eltechs/axs/xserver/impl/masks/Mask;)Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;",
            ">(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;)",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->flagsClass:Ljava/lang/Class;

    iget-object v1, p1, Lcom/eltechs/axs/xserver/impl/masks/Mask;->flagsClass:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 202
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->flagsClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result p0

    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->getRawMask()I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {v0, p0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->create(Ljava/lang/Class;I)Lcom/eltechs/axs/xserver/impl/masks/Mask;

    move-result-object p0

    return-object p0
.end method

.method public static varargs of([Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Lcom/eltechs/axs/xserver/impl/masks/Mask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F::",
            "Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;",
            ">([TF;)",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, p0, v1

    .line 54
    invoke-interface {v4}, Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;->flagValue()I

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    new-instance p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;

    invoke-direct {p0, v3, v0}, Lcom/eltechs/axs/xserver/impl/masks/Mask;-><init>(ILjava/lang/Class;)V

    return-object p0
.end method


# virtual methods
.method public clear(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 160
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;->flagValue()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 235
    instance-of v0, p1, Lcom/eltechs/axs/xserver/impl/masks/Mask;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 240
    :cond_0
    check-cast p1, Lcom/eltechs/axs/xserver/impl/masks/Mask;

    .line 241
    iget-object v0, p1, Lcom/eltechs/axs/xserver/impl/masks/Mask;->flagsClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->flagsClass:Ljava/lang/Class;

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getRawMask()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    return v0
.end method

.method public intersects(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;)Z"
        }
    .end annotation

    .line 109
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    iget p1, p1, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 98
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .line 88
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;->flagValue()I

    move-result p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSubsetOf(Lcom/eltechs/axs/xserver/impl/masks/Mask;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;)Z"
        }
    .end annotation

    .line 120
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    iget p1, p1, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    not-int p1, p1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public joinWith(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;)V"
        }
    .end annotation

    .line 130
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    iget p1, p1, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    return-void
.end method

.method public set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 150
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;->flagValue()I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    return-void
.end method

.method public setValue(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->set(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p0, p1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->clear(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V

    :goto_0
    return-void
.end method

.method public substract(Lcom/eltechs/axs/xserver/impl/masks/Mask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/eltechs/axs/xserver/impl/masks/Mask<",
            "TF;>;)V"
        }
    .end annotation

    .line 140
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    iget p1, p1, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->flagsClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;

    const/4 v2, 0x0

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v5, v1, v2

    .line 218
    iget v6, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    invoke-interface {v5}, Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;->flagValue()I

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    if-lez v4, :cond_0

    const/16 v6, 0x7c

    .line 222
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    :cond_0
    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toggle(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .line 171
    iget v0, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    invoke-interface {p1}, Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;->flagValue()I

    move-result p1

    xor-int/2addr p1, v0

    iput p1, p0, Lcom/eltechs/axs/xserver/impl/masks/Mask;->value:I

    return-void
.end method
