.class public Lcom/google/android/gms/internal/zzae;
.super Ljava/lang/Exception;


# instance fields
.field private zzad:J

.field private zzbj:Lcom/google/android/gms/internal/zzp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzae;->zzbj:Lcom/google/android/gms/internal/zzp;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzae;->zzbj:Lcom/google/android/gms/internal/zzp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzae;->zzbj:Lcom/google/android/gms/internal/zzp;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzae;->zzbj:Lcom/google/android/gms/internal/zzp;

    return-void
.end method


# virtual methods
.method final zza(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzae;->zzad:J

    return-void
.end method
