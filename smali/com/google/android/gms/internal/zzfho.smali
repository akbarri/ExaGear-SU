.class final Lcom/google/android/gms/internal/zzfho;
.super Lcom/google/android/gms/internal/zzfhn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzfhn<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfhn;-><init>()V

    return-void
.end method


# virtual methods
.method final zzcr(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzfhq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzfhq<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzfhu$zzd;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzfhu$zzd;->zzppp:Lcom/google/android/gms/internal/zzfhq;

    return-object p1
.end method

.method final zzh(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/zzfhu$zzd;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
