.class public final Lcom/google/android/gms/internal/zzcyk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# static fields
.field public static final zzklp:Lcom/google/android/gms/internal/zzcyk;


# instance fields
.field private final zzela:Z

.field private final zzelb:Ljava/lang/String;

.field private final zzenc:Z

.field private final zzend:Ljava/lang/String;

.field private final zzklq:Z

.field private final zzklr:Z

.field private final zzkls:Ljava/lang/Long;

.field private final zzklt:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/google/android/gms/internal/zzcyl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcyl;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzcyk;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/zzcyk;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    sput-object v0, Lcom/google/android/gms/internal/zzcyk;->zzklp:Lcom/google/android/gms/internal/zzcyk;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcyk;->zzklq:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcyk;->zzela:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcyk;->zzelb:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcyk;->zzenc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzcyk;->zzklr:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcyk;->zzend:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcyk;->zzkls:Ljava/lang/Long;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcyk;->zzklt:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getServerClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzelb:Ljava/lang/String;

    return-object v0
.end method

.method public final isIdTokenRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzela:Z

    return v0
.end method

.method public final zzbeu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzklq:Z

    return v0
.end method

.method public final zzbev()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzenc:Z

    return v0
.end method

.method public final zzbew()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzend:Ljava/lang/String;

    return-object v0
.end method

.method public final zzbex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzklr:Z

    return v0
.end method

.method public final zzbey()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzkls:Ljava/lang/Long;

    return-object v0
.end method

.method public final zzbez()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcyk;->zzklt:Ljava/lang/Long;

    return-object v0
.end method
