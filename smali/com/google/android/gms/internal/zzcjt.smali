.class final Lcom/google/android/gms/internal/zzcjt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjli:Z

.field private synthetic zzjlj:Lcom/google/android/gms/internal/zzcjs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcjs;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjt;->zzjlj:Lcom/google/android/gms/internal/zzcjs;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcjt;->zzjli:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjt;->zzjlj:Lcom/google/android/gms/internal/zzcjs;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzcjs;->zza(Lcom/google/android/gms/internal/zzcjs;)Lcom/google/android/gms/internal/zzckj;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcjt;->zzjli:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzckj;->zzbt(Z)V

    return-void
.end method
