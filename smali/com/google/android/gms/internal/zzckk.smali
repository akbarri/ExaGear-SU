.class final Lcom/google/android/gms/internal/zzckk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjpc:Lcom/google/android/gms/internal/zzclj;

.field private synthetic zzjpd:Lcom/google/android/gms/internal/zzckj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzckj;Lcom/google/android/gms/internal/zzclj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzckk;->zzjpd:Lcom/google/android/gms/internal/zzckj;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzckk;->zzjpc:Lcom/google/android/gms/internal/zzclj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckk;->zzjpd:Lcom/google/android/gms/internal/zzckj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzckk;->zzjpc:Lcom/google/android/gms/internal/zzclj;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzckj;->zza(Lcom/google/android/gms/internal/zzckj;Lcom/google/android/gms/internal/zzclj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzckk;->zzjpd:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->start()V

    return-void
.end method
