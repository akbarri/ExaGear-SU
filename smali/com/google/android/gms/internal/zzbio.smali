.class public interface abstract Lcom/google/android/gms/internal/zzbio;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# virtual methods
.method public abstract getStatus()Lcom/google/android/gms/common/api/Status;
.end method

.method public abstract getThrottleEndTimeMillis()J
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation
.end method

.method public abstract zza(Ljava/lang/String;[BLjava/lang/String;)[B
.end method

.method public abstract zzaol()Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/Hide;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract zzaom()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method
