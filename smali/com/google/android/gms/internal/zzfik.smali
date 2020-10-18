.class public Lcom/google/android/gms/internal/zzfik;
.super Ljava/lang/Object;


# static fields
.field private static final zzpns:Lcom/google/android/gms/internal/zzfhm;


# instance fields
.field private zzpqq:Lcom/google/android/gms/internal/zzfgs;

.field private volatile zzpqr:Lcom/google/android/gms/internal/zzfjc;

.field private volatile zzpqs:Lcom/google/android/gms/internal/zzfgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzfhm;->zzczf()Lcom/google/android/gms/internal/zzfhm;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzfik;->zzpns:Lcom/google/android/gms/internal/zzfhm;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzj(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    sget-object v0, Lcom/google/android/gms/internal/zzfgs;->zzpnw:Lcom/google/android/gms/internal/zzfgs;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;
    :try_end_1
    .catch Lcom/google/android/gms/internal/zzfie; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    sget-object p1, Lcom/google/android/gms/internal/zzfgs;->zzpnw:Lcom/google/android/gms/internal/zzfgs;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzfik;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzfik;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    iget-object v1, p1, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzfik;->toByteString()Lcom/google/android/gms/internal/zzfgs;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzfik;->toByteString()Lcom/google/android/gms/internal/zzfgs;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfgs;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfjc;->zzczu()Lcom/google/android/gms/internal/zzfjc;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/zzfik;->zzj(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjc;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzfjc;->zzczu()Lcom/google/android/gms/internal/zzfjc;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfik;->zzj(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjc;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toByteString()Lcom/google/android/gms/internal/zzfgs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/zzfgs;->zzpnw:Lcom/google/android/gms/internal/zzfgs;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfjc;->toByteString()Lcom/google/android/gms/internal/zzfgs;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzhs()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfgs;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfjc;->zzhs()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzk(Lcom/google/android/gms/internal/zzfjc;)Lcom/google/android/gms/internal/zzfjc;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfik;->zzpqq:Lcom/google/android/gms/internal/zzfgs;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzfik;->zzpqs:Lcom/google/android/gms/internal/zzfgs;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfik;->zzpqr:Lcom/google/android/gms/internal/zzfjc;

    return-object v0
.end method
