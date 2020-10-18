.class public Lcom/google/android/gms/common/zzs;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field public static final GOOGLE_PLAY_SERVICES_PACKAGE:Ljava/lang/String; = "com.google.android.gms"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_SERVICES_VERSION_CODE:I = 0xba5338
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GOOGLE_PLAY_STORE_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static zzfrr:Z
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end field

.field private static zzfrs:Z
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end field

.field private static zzfrt:Z

.field private static zzfru:Z

.field static final zzfrv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final zzfrw:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzs;->zzfrv:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzs;->zzfrw:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorPendingIntent(ILandroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/zzf;->zzahf()Lcom/google/android/gms/common/zzf;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Lcom/google/android/gms/common/zzf;->getErrorResolutionPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorString(I)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/ConnectionResult;->getStatusString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/common/zzs;->zzc(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static isUserRecoverableError(I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static zza(Landroid/content/Context;ZII)I
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/zzbq;->checkArgument(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x9

    if-eqz p1, :cond_2

    :try_start_0
    const-string v4, "com.android.vending"

    const/16 v6, 0x2040

    invoke-virtual {v3, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    const-string p0, "GooglePlayServicesUtil"

    const-string p1, "Google Play Store is missing."

    :goto_2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    :goto_3
    :try_start_1
    const-string v6, "com.google.android.gms"

    const/16 v7, 0x40

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    invoke-static {p0}, Lcom/google/android/gms/common/zzt;->zzcj(Landroid/content/Context;)Lcom/google/android/gms/common/zzt;

    invoke-static {v6, v1}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "GooglePlayServicesUtil"

    const-string p1, "Google Play services signature invalid."

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_5

    invoke-static {v4, v1}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p0, p0, v2

    iget-object p1, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    const-string p0, "GooglePlayServicesUtil"

    const-string p1, "Google Play Store signature invalid."

    goto :goto_2

    :cond_5
    div-int/lit16 p2, p2, 0x3e8

    iget p0, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    div-int/lit16 p0, p0, 0x3e8

    if-ge p0, p2, :cond_7

    if-eq p3, v0, :cond_6

    div-int/lit16 p3, p3, 0x3e8

    if-ge p0, p3, :cond_7

    :cond_6
    const-string p0, "GooglePlayServicesUtil"

    sget p1, Lcom/google/android/gms/common/zzs;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    iget p2, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 p3, 0x4d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Google Play services out of date.  Requires "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but found "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_7
    iget-object p0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p0, :cond_8

    :try_start_2
    const-string p0, "com.google.android.gms"

    invoke-virtual {v3, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    const-string p1, "GooglePlayServicesUtil"

    const-string p2, "Google Play services missing when getting application info."

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_8
    :goto_4
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p0, :cond_9

    const/4 p0, 0x3

    return p0

    :cond_9
    return v2

    :catch_2
    const-string p0, "GooglePlayServicesUtil"

    const-string p1, "Google Play services is missing."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static zzb(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/util/zzz;->zzb(Landroid/content/Context;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static zzbo(Landroid/content/Context;)V
    .locals 4
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;,
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/zzf;->zzahf()Lcom/google/android/gms/common/zzf;

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/google/android/gms/common/zzf;->zzc(Landroid/content/Context;I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/zzf;->zzahf()Lcom/google/android/gms/common/zzf;

    const-string v1, "e"

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v1, "GooglePlayServicesUtil"

    const/16 v2, 0x39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "GooglePlayServices not available due to error "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;-><init>(I)V

    throw p0

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    const-string v2, "Google Play Services not available"

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw v1

    :cond_1
    return-void
.end method

.method public static zzc(Landroid/content/Context;I)I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "GooglePlayServicesUtil"

    const-string v1, "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/zzs;->zzfrw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbf;->zzcs(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A required meta-data tag in your app\'s AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    sget v1, Lcom/google/android/gms/common/zzs;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    if-eq v0, v1, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    sget p1, Lcom/google/android/gms/common/zzs;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    const/16 v1, 0x140

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The meta-data tag in your app\'s AndroidManifest.xml does not have the right value.  Expected "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/util/zzj;->zzcv(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/google/android/gms/common/util/zzj;->zzcx(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/google/android/gms/common/zzs;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    invoke-static {p0, v0, v1, p1}, Lcom/google/android/gms/common/zzs;->zza(Landroid/content/Context;ZII)I

    move-result p0

    return p0
.end method

.method public static zzcf(Landroid/content/Context;)V
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/zzs;->zzfrv:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_1

    const/16 v0, 0x28c4

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static zzcg(Landroid/content/Context;)I
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.google.android.gms"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    return p0

    :catch_0
    const-string p0, "GooglePlayServicesUtil"

    const-string v1, "Google Play services is missing."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static zzci(Landroid/content/Context;)Z
    .locals 5
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    sget-boolean v0, Lcom/google/android/gms/common/zzs;->zzfru:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zzbih;->zzdd(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbig;

    move-result-object v0

    const-string v3, "com.google.android.gms"

    const/16 v4, 0x40

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/zzbig;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/zzt;->zzcj(Landroid/content/Context;)Lcom/google/android/gms/common/zzt;

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {v0, v2}, Lcom/google/android/gms/common/zzt;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    sput-boolean v2, Lcom/google/android/gms/common/zzs;->zzfrt:Z

    goto :goto_0

    :cond_0
    sput-boolean v1, Lcom/google/android/gms/common/zzs;->zzfrt:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "GooglePlayServicesUtil"

    const-string v3, "Cannot find Google Play services package name."

    invoke-static {v0, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    sput-boolean v2, Lcom/google/android/gms/common/zzs;->zzfru:Z

    goto :goto_2

    :goto_1
    sput-boolean v2, Lcom/google/android/gms/common/zzs;->zzfru:Z

    throw p0

    :cond_1
    :goto_2
    sget-boolean p0, Lcom/google/android/gms/common/zzs;->zzfrt:Z

    if-nez p0, :cond_3

    const-string p0, "user"

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method public static zzd(Landroid/content/Context;I)Z
    .locals 2
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    if-ne p1, v0, :cond_1

    const-string p1, "com.google.android.gms"

    invoke-static {p0, p1}, Lcom/google/android/gms/common/zzs;->zzr(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static zze(Landroid/content/Context;I)Z
    .locals 0
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/zzz;->zze(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method static zzr(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "com.google.android.gms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzanx()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller;->getAllSessions()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-virtual {v4}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :catch_0
    return v3

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v4, 0x2000

    :try_start_1
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz v0, :cond_2

    iget-boolean p0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    return p0

    :cond_2
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzanu()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "user"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, "true"

    const-string v0, "restricted_profile"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_0

    :cond_3
    move p0, v3

    :goto_0
    if-nez p0, :cond_4

    return v2

    :catch_1
    :cond_4
    return v3
.end method
