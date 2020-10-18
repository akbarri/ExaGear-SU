.class final Lcom/google/android/gms/internal/zzclp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zziuw:Ljava/lang/String;

.field private synthetic zzjpm:Ljava/lang/String;

.field private synthetic zzjpn:Ljava/lang/String;

.field private synthetic zzjpy:Lcom/google/android/gms/internal/zzclk;

.field private synthetic zzjqa:Ljava/util/concurrent/atomic/AtomicReference;

.field private synthetic zzjqb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclk;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzclp;->zzjpy:Lcom/google/android/gms/internal/zzclk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzclp;->zzjqa:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzclp;->zziuw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzclp;->zzjpm:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzclp;->zzjpn:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzclp;->zzjqb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzclp;->zzjpy:Lcom/google/android/gms/internal/zzclk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzclk;->zzjev:Lcom/google/android/gms/internal/zzckj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzckj;->zzayg()Lcom/google/android/gms/internal/zzcme;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzclp;->zzjqa:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzclp;->zziuw:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzclp;->zzjpm:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzclp;->zzjpn:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzclp;->zzjqb:Z

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/zzcme;->zza(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
