.class public final Lcom/google/android/gms/common/util/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/zze;


# static fields
.field private static zzgkp:Lcom/google/android/gms/common/util/zzi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/util/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/util/zzi;->zzgkp:Lcom/google/android/gms/common/util/zzi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzanq()Lcom/google/android/gms/common/util/zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/util/zzi;->zzgkp:Lcom/google/android/gms/common/util/zzi;

    return-object v0
.end method


# virtual methods
.method public final currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final elapsedRealtime()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nanoTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
