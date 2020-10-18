.class Lcom/google/android/gms/common/zzp;
.super Ljava/lang/Object;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# static fields
.field private static final zzfrl:Lcom/google/android/gms/common/zzp;


# instance fields
.field final cause:Ljava/lang/Throwable;

.field final zzfrm:Z

.field private zzfrn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/zzp;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/common/zzp;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/google/android/gms/common/zzp;->zzfrl:Lcom/google/android/gms/common/zzp;

    return-void
.end method

.method constructor <init>(ZLjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/zzp;->zzfrm:Z

    iput-object p2, p0, Lcom/google/android/gms/common/zzp;->zzfrn:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/zzp;->cause:Ljava/lang/Throwable;

    return-void
.end method

.method static zza(Ljava/lang/String;Lcom/google/android/gms/common/zzh;ZZ)Lcom/google/android/gms/common/zzp;
    .locals 7

    new-instance v6, Lcom/google/android/gms/common/zzr;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/zzr;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/zzh;ZZLcom/google/android/gms/common/zzq;)V

    return-object v6
.end method

.method static zzahj()Lcom/google/android/gms/common/zzp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/zzp;->zzfrl:Lcom/google/android/gms/common/zzp;

    return-object v0
.end method

.method static zzd(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/zzp;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/common/zzp;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/zzp;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/zzp;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/common/zzp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/zzp;-><init>(ZLjava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/zzp;->zzfrn:Ljava/lang/String;

    return-object v0
.end method
