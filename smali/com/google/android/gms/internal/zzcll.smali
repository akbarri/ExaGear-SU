.class final Lcom/google/android/gms/internal/zzcll;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzeih:Z

.field private synthetic zzjpy:Lcom/google/android/gms/internal/zzclk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzclk;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcll;->zzjpy:Lcom/google/android/gms/internal/zzclk;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzcll;->zzeih:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcll;->zzjpy:Lcom/google/android/gms/internal/zzclk;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzcll;->zzeih:Z

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzclk;->zza(Lcom/google/android/gms/internal/zzclk;Z)V

    return-void
.end method
