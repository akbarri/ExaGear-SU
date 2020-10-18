.class final Lcom/google/android/gms/internal/zzfkq$zza;
.super Lcom/google/android/gms/internal/zzfkq$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfkq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfkq$zzd;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final zze(Ljava/lang/Object;JB)V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfkq;->zzcyy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfkq;->zzc(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzfkq;->zzd(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final zzf(Ljava/lang/Object;J)B
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfkq;->zzcyy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzfkq;->zzd(Ljava/lang/Object;J)B

    move-result p1

    return p1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzfkq;->zze(Ljava/lang/Object;J)B

    move-result p1

    return p1
.end method
