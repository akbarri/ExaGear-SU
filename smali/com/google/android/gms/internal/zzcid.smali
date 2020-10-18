.class final Lcom/google/android/gms/internal/zzcid;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzjfi:J

.field private synthetic zzjfj:Lcom/google/android/gms/internal/zzcia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcia;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcid;->zzjfj:Lcom/google/android/gms/internal/zzcia;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzcid;->zzjfi:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcid;->zzjfj:Lcom/google/android/gms/internal/zzcia;

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzcid;->zzjfi:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzcia;->zza(Lcom/google/android/gms/internal/zzcia;J)V

    return-void
.end method
