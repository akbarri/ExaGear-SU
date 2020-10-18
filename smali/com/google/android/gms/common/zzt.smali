.class public Lcom/google/android/gms/common/zzt;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field private static zzfrx:Lcom/google/android/gms/common/zzt;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/zzt;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzh;)Lcom/google/android/gms/common/zzh;
    .locals 3
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x1

    array-length v0, v0

    if-eq v0, v2, :cond_1

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/zzi;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzi;-><init>([B)V

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/zzh;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 3
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/zzk;->zzfrh:[Lcom/google/android/gms/common/zzh;

    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzh;)Lcom/google/android/gms/common/zzh;

    move-result-object p0

    goto :goto_1

    :cond_0
    new-array p1, v1, [Lcom/google/android/gms/common/zzh;

    sget-object v2, Lcom/google/android/gms/common/zzk;->zzfrh:[Lcom/google/android/gms/common/zzh;

    aget-object v2, v2, v0

    aput-object v2, p1, v0

    goto :goto_0

    :goto_1
    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static zzcj(Landroid/content/Context;)Lcom/google/android/gms/common/zzt;
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/android/gms/common/zzt;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/zzt;->zzfrx:Lcom/google/android/gms/common/zzt;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/zzg;->zzch(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/common/zzt;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/zzt;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/common/zzt;->zzfrx:Lcom/google/android/gms/common/zzt;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/google/android/gms/common/zzt;->zzfrx:Lcom/google/android/gms/common/zzt;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private final zzgh(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/zzt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbih;->zzdd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbig;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbig;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/google/android/gms/common/zzt;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/zzs;->zzci(Landroid/content/Context;)Z

    move-result p1

    if-nez v0, :cond_0

    const-string p1, "null pkg"

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/zzp;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const-string p1, "single cert required"

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/android/gms/common/zzi;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/zzi;-><init>([B)V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v1, p1}, Lcom/google/android/gms/common/zzg;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzh;Z)Lcom/google/android/gms/common/zzp;

    move-result-object v4

    iget-boolean v5, v4, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_3

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/common/zzg;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzh;Z)Lcom/google/android/gms/common/zzp;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    if-eqz p1, :cond_3

    :cond_2
    const-string p1, "debuggable release cert app rejected"

    goto :goto_0

    :cond_3
    return-object v4

    :catch_0
    const-string v0, "no pkg "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/zzp;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Landroid/content/pm/PackageInfo;)Z
    .locals 3
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-static {p1, v2}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/zzt;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/zzs;->zzci(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const-string v1, "Test-keys aren\'t accepted on this build."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.method public final zzbp(I)Z
    .locals 4
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/zzt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbih;->zzdd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbig;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v0, p1, v2

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/zzt;->zzgh(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;

    move-result-object v0

    iget-boolean v3, v0, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "no pkgs"

    invoke-static {p1}, Lcom/google/android/gms/common/zzp;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;

    move-result-object v0

    :cond_2
    iget-boolean p1, v0, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    if-nez p1, :cond_4

    iget-object p1, v0, Lcom/google/android/gms/common/zzp;->cause:Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    const-string p1, "GoogleCertificatesRslt"

    invoke-virtual {v0}, Lcom/google/android/gms/common/zzp;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/common/zzp;->cause:Ljava/lang/Throwable;

    invoke-static {p1, v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_3
    const-string p1, "GoogleCertificatesRslt"

    invoke-virtual {v0}, Lcom/google/android/gms/common/zzp;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    iget-boolean p1, v0, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    return p1
.end method
