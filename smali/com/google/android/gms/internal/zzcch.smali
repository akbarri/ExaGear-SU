.class public final Lcom/google/android/gms/internal/zzcch;
.super Lcom/google/android/gms/internal/zzcce;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzcce<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/zzcce;-><init>(ILjava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzccf;)V

    return-void
.end method

.method private final zzc(Lcom/google/android/gms/internal/zzccm;)Ljava/lang/Integer;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcce;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcce;->zzje()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcce;->getSource()I

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzccm;->getIntFlagValue(Ljava/lang/String;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcce;->zzje()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/zzccm;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzcch;->zzc(Lcom/google/android/gms/internal/zzccm;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
