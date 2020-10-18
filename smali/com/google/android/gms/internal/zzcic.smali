.class final Lcom/google/android/gms/internal/zzcic;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic zzbiq:Ljava/lang/String;

.field private synthetic zzjfi:J

.field private synthetic zzjfj:Lcom/google/android/gms/internal/zzcia;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcia;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcic;->zzjfj:Lcom/google/android/gms/internal/zzcia;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcic;->zzbiq:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzcic;->zzjfi:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcic;->zzjfj:Lcom/google/android/gms/internal/zzcia;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcic;->zzbiq:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzcic;->zzjfi:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzcia;->zzb(Lcom/google/android/gms/internal/zzcia;Ljava/lang/String;J)V

    return-void
.end method
