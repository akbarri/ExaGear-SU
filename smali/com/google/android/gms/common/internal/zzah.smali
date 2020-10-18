.class public final Lcom/google/android/gms/common/internal/zzah;
.super Ljava/lang/Object;


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final zzdxe:Ljava/lang/String;

.field private final zzggu:Ljava/lang/String;

.field private final zzggv:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzah;->zzdxe:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzah;->zzggu:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzah;->mComponentName:Landroid/content/ComponentName;

    const/16 p1, 0x81

    iput p1, p0, Lcom/google/android/gms/common/internal/zzah;->zzggv:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzah;->zzdxe:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->zzgv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzah;->zzggu:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzah;->mComponentName:Landroid/content/ComponentName;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzah;->zzggv:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/common/internal/zzah;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/internal/zzah;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzah;->zzdxe:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzah;->zzdxe:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzah;->zzggu:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzah;->zzggu:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzah;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzah;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/common/internal/zzah;->zzggv:I

    iget p1, p1, Lcom/google/android/gms/common/internal/zzah;->zzggv:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->zzggu:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzah;->zzdxe:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzah;->zzggu:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzah;->mComponentName:Landroid/content/ComponentName;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/common/internal/zzah;->zzggv:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->zzdxe:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->zzdxe:Ljava/lang/String;

    return-object v0
.end method

.method public final zzamu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zzah;->zzggv:I

    return v0
.end method

.method public final zzcq(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzah;->zzdxe:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->zzdxe:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->zzggu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzah;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
