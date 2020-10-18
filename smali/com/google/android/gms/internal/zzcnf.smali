.class final Lcom/google/android/gms/internal/zzcnf;
.super Lcom/google/android/gms/internal/zzcip;


# instance fields
.field private synthetic zzjse:Lcom/google/android/gms/internal/zzcnd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcnd;Lcom/google/android/gms/internal/zzckj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcnf;->zzjse:Lcom/google/android/gms/internal/zzcnd;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzcip;-><init>(Lcom/google/android/gms/internal/zzckj;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcnf;->zzjse:Lcom/google/android/gms/internal/zzcnd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcnd;->zza(Lcom/google/android/gms/internal/zzcnd;)V

    return-void
.end method
