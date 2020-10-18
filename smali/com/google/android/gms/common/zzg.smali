.class final Lcom/google/android/gms/common/zzg;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field private static volatile zzfra:Lcom/google/android/gms/common/internal/zzba;

.field private static final zzfrb:Ljava/lang/Object;

.field private static zzfrc:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzg;->zzfrb:Ljava/lang/Object;

    return-void
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/common/zzh;Z)Lcom/google/android/gms/common/zzp;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/zzg;->zzfra:Lcom/google/android/gms/common/internal/zzba;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/zzg;->zzfrc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/common/zzg;->zzfrb:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v1, Lcom/google/android/gms/common/zzg;->zzfra:Lcom/google/android/gms/common/internal/zzba;

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/android/gms/common/zzg;->zzfrc:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhdl:Lcom/google/android/gms/dynamite/DynamiteModule$zzd;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$zzd;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzhk(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzbb;->zzan(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzba;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/common/zzg;->zzfra:Lcom/google/android/gms/common/internal/zzba;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$zzc; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/gms/common/zzg;->zzfrc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/common/zzn;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/zzn;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/zzh;Z)V

    :try_start_3
    sget-object v1, Lcom/google/android/gms/common/zzg;->zzfra:Lcom/google/android/gms/common/internal/zzba;

    sget-object v2, Lcom/google/android/gms/common/zzg;->zzfrc:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/internal/zzba;->zza(Lcom/google/android/gms/common/zzn;Lcom/google/android/gms/dynamic/IObjectWrapper;)Z

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/common/zzp;->zzahj()Lcom/google/android/gms/common/zzp;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x1

    if-nez p2, :cond_3

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/zzg;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzh;Z)Lcom/google/android/gms/common/zzp;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/common/zzp;->zza(Ljava/lang/String;Lcom/google/android/gms/common/zzh;ZZ)Lcom/google/android/gms/common/zzp;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "GoogleCertificates"

    const-string p2, "Failed to get Google certificates from remote"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, "module call"

    :goto_2
    invoke-static {p1, p0}, Lcom/google/android/gms/common/zzp;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzp;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception p0

    const-string p1, "module init"

    goto :goto_2
.end method

.method static declared-synchronized zzch(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/google/android/gms/common/zzg;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/zzg;->zzfrc:Landroid/content/Context;

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/zzg;->zzfrc:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
