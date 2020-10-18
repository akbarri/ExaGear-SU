.class final Lcom/google/android/gms/internal/zzcjq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final status:I

.field private final zzjky:Lcom/google/android/gms/internal/zzcjp;

.field private final zzjkz:Ljava/lang/Throwable;

.field private final zzjla:[B

.field private final zzjlb:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcjp;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcjp;",
            "I",
            "Ljava/lang/Throwable;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcjq;->zzjky:Lcom/google/android/gms/internal/zzcjp;

    iput p3, p0, Lcom/google/android/gms/internal/zzcjq;->status:I

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcjq;->zzjkz:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcjq;->zzjla:[B

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcjq;->packageName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzcjq;->zzjlb:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcjp;ILjava/lang/Throwable;[BLjava/util/Map;Lcom/google/android/gms/internal/zzcjo;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/internal/zzcjq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzcjp;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcjq;->zzjky:Lcom/google/android/gms/internal/zzcjp;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcjq;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzcjq;->status:I

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcjq;->zzjkz:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcjq;->zzjla:[B

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcjq;->zzjlb:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcjp;->zza(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void
.end method
