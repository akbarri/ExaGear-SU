.class final Lcom/google/android/gms/internal/zzfgx;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:[B

.field private final zzpob:Lcom/google/android/gms/internal/zzfhg;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfgx;->buffer:[B

    iget-object p1, p0, Lcom/google/android/gms/internal/zzfgx;->buffer:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/zzfhg;->zzbc([B)Lcom/google/android/gms/internal/zzfhg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfgx;->zzpob:Lcom/google/android/gms/internal/zzfhg;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/zzfgt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzfgx;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzcxv()Lcom/google/android/gms/internal/zzfgs;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgx;->zzpob:Lcom/google/android/gms/internal/zzfhg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfhg;->zzcyx()V

    new-instance v0, Lcom/google/android/gms/internal/zzfgz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfgx;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfgz;-><init>([B)V

    return-object v0
.end method

.method public final zzcxw()Lcom/google/android/gms/internal/zzfhg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfgx;->zzpob:Lcom/google/android/gms/internal/zzfhg;

    return-object v0
.end method
