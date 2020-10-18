.class final Lcom/google/android/gms/internal/zzcmx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjrs:Lcom/google/android/gms/internal/zzcms;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcms;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcmx;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmx;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcms;->zzjri:Lcom/google/android/gms/internal/zzcme;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzcme;->zza(Lcom/google/android/gms/internal/zzcme;Lcom/google/android/gms/internal/zzcjb;)Lcom/google/android/gms/internal/zzcjb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcmx;->zzjrs:Lcom/google/android/gms/internal/zzcms;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcms;->zzjri:Lcom/google/android/gms/internal/zzcme;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcme;->zzb(Lcom/google/android/gms/internal/zzcme;)V

    return-void
.end method
