.class public final Lcom/google/android/gms/common/api/GoogleApi$zza;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;


# instance fields
.field public final zzfss:Lcom/google/android/gms/common/api/internal/zzda;

.field public final zzfst:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/zzd;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzd;->zzahy()Lcom/google/android/gms/common/api/GoogleApi$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfsr:Lcom/google/android/gms/common/api/GoogleApi$zza;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/api/internal/zzda;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfss:Lcom/google/android/gms/common/api/internal/zzda;

    iput-object p3, p0, Lcom/google/android/gms/common/api/GoogleApi$zza;->zzfst:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/zzda;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/zzc;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/GoogleApi$zza;-><init>(Lcom/google/android/gms/common/api/internal/zzda;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
