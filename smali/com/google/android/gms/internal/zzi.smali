.class public final Lcom/google/android/gms/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaa;


# instance fields
.field private final zzv:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzj;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzj;-><init>(Lcom/google/android/gms/internal/zzi;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzi;->zzv:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzae;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;",
            "Lcom/google/android/gms/internal/zzae;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/zzx;->zzc(Lcom/google/android/gms/internal/zzae;)Lcom/google/android/gms/internal/zzx;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzi;->zzv:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/zzk;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/google/android/gms/internal/zzk;-><init>(Lcom/google/android/gms/internal/zzi;Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;",
            "Lcom/google/android/gms/internal/zzx<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzr;->zzj()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzr;->zzb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzi;->zzv:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/zzk;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzk;-><init>(Lcom/google/android/gms/internal/zzi;Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzr<",
            "*>;",
            "Lcom/google/android/gms/internal/zzx<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzi;->zza(Lcom/google/android/gms/internal/zzr;Lcom/google/android/gms/internal/zzx;Ljava/lang/Runnable;)V

    return-void
.end method
