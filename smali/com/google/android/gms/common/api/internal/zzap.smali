.class final Lcom/google/android/gms/common/api/internal/zzap;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzfxt:Lcom/google/android/gms/common/api/internal/zzao;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzao;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzap;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzap;->zzfxt:Lcom/google/android/gms/common/api/internal/zzao;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/zzao;->zza(Lcom/google/android/gms/common/api/internal/zzao;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/zzf;->zzcf(Landroid/content/Context;)V

    return-void
.end method
