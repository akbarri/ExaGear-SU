.class public Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;
.super Ljava/lang/Object;
.source "ReluctantlyGarbageCollectedArrays.java"


# instance fields
.field private byteArray:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[B>;"
        }
    .end annotation
.end field

.field private intArray:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[I>;"
        }
    .end annotation
.end field

.field private shortArray:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "[S>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->byteArray:Ljava/lang/ref/SoftReference;

    .line 17
    iput-object v0, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->shortArray:Ljava/lang/ref/SoftReference;

    .line 18
    iput-object v0, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->intArray:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method public getByteArray(I)[B
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->byteArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->byteArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 30
    array-length v1, v0

    if-ge v1, p1, :cond_2

    .line 32
    :cond_1
    new-array v0, p1, [B

    .line 33
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->byteArray:Ljava/lang/ref/SoftReference;

    :cond_2
    return-object v0
.end method

.method public getIntArray(I)[I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->intArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->intArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 68
    array-length v1, v0

    if-ge v1, p1, :cond_2

    .line 70
    :cond_1
    new-array v0, p1, [I

    .line 71
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->intArray:Ljava/lang/ref/SoftReference;

    :cond_2
    return-object v0
.end method

.method public getShortArray(I)[S
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->shortArray:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->shortArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 49
    array-length v1, v0

    if-ge v1, p1, :cond_2

    .line 51
    :cond_1
    new-array v0, p1, [S

    .line 52
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/eltechs/axs/helpers/ReluctantlyGarbageCollectedArrays;->shortArray:Ljava/lang/ref/SoftReference;

    :cond_2
    return-object v0
.end method
