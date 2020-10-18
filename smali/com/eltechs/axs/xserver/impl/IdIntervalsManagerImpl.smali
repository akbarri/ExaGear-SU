.class public Lcom/eltechs/axs/xserver/impl/IdIntervalsManagerImpl;
.super Ljava/lang/Object;
.source "IdIntervalsManagerImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xserver/IdIntervalsManager;


# static fields
.field private static final MINIMAL_ID_MASK_BITS:I = 0x12

.field private static final ZERO_TOP_BITS:I = 0x3


# instance fields
.field private final freeIds:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/eltechs/axs/xserver/IdInterval;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/xserver/impl/IdIntervalsManagerImpl;->freeIds:Ljava/util/TreeSet;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 33
    :goto_0
    invoke-static {v2}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x20

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    const/16 v3, 0xb

    if-gt v2, v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    const-string v4, "The number of intervals is too big: %d."

    .line 41
    new-array v5, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v3, v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    rsub-int/lit8 v0, v2, 0x1d

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    :goto_2
    if-ge v1, p1, :cond_3

    .line 54
    iget-object v3, p0, Lcom/eltechs/axs/xserver/impl/IdIntervalsManagerImpl;->freeIds:Ljava/util/TreeSet;

    new-instance v4, Lcom/eltechs/axs/xserver/IdInterval;

    shl-int v5, v1, v0

    invoke-direct {v4, v5, v2}, Lcom/eltechs/axs/xserver/IdInterval;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public freeInterval(Lcom/eltechs/axs/xserver/IdInterval;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/IdIntervalsManagerImpl;->freeIds:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 76
    invoke-static {p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    return-void
.end method

.method public getInterval()Lcom/eltechs/axs/xserver/IdInterval;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/IdIntervalsManagerImpl;->freeIds:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/eltechs/axs/xserver/impl/IdIntervalsManagerImpl;->freeIds:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/eltechs/axs/xserver/IdInterval;

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
