.class final Lcom/google/android/gms/internal/zzcng;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjfi:J

.field private synthetic zzjse:Lcom/google/android/gms/internal/zzcnd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcnd;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcng;->zzjse:Lcom/google/android/gms/internal/zzcnd;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcng;->zzjfi:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcng;->zzjse:Lcom/google/android/gms/internal/zzcnd;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcng;->zzjfi:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcnd;->zza(Lcom/google/android/gms/internal/zzcnd;J)V

    return-void
.end method
