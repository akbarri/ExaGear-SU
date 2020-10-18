.class public final Lcom/google/firebase/FirebaseOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/FirebaseOptions$Builder;
    }
.end annotation


# instance fields
.field private final zzetb:Ljava/lang/String;

.field private final zzmna:Ljava/lang/String;

.field private final zzmnb:Ljava/lang/String;

.field private final zzmnc:Ljava/lang/String;

.field private final zzmnd:Ljava/lang/String;

.field private final zzmne:Ljava/lang/String;

.field private final zzmnf:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/util/zzw;->zzhb(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ApplicationId must be set."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzbq;->zza(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions;->zzetb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/FirebaseOptions;->zzmna:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/FirebaseOptions;->zzmnb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/FirebaseOptions;->zzmnc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/FirebaseOptions;->zzmnd:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/FirebaseOptions;->zzmne:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/FirebaseOptions;->zzmnf:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/zzc;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static fromResource(Landroid/content/Context;)Lcom/google/firebase/FirebaseOptions;
    .locals 9

    new-instance v0, Lcom/google/android/gms/common/internal/zzca;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzca;-><init>(Landroid/content/Context;)V

    const-string p0, "google_app_id"

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/zzca;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/FirebaseOptions;

    const-string v1, "google_api_key"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzca;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "firebase_database_url"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzca;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "ga_trackingId"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzca;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "gcm_defaultSenderId"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzca;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "google_storage_bucket"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzca;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "project_id"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzca;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method static synthetic zza(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzetb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzmna:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnd:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzmne:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zzg(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnf:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/firebase/FirebaseOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/firebase/FirebaseOptions;

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzetb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zzetb:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmna:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zzmna:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnb:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zzmnb:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zzmnc:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnd:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zzmnd:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmne:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->zzmne:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnf:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/firebase/FirebaseOptions;->zzmnf:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/internal/zzbg;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmna:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzetb:Ljava/lang/String;

    return-object v0
.end method

.method public final getDatabaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnb:Ljava/lang/String;

    return-object v0
.end method

.method public final getGcmSenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnd:Ljava/lang/String;

    return-object v0
.end method

.method public final getProjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmnf:Ljava/lang/String;

    return-object v0
.end method

.method public final getStorageBucket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->zzmne:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzetb:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzmna:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzmnb:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzmnc:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzmnd:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzmne:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->zzmnf:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzbg;->zzx(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "applicationId"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzetb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "apiKey"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzmna:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "databaseUrl"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzmnb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "gcmSenderId"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzmnd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "storageBucket"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzmne:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    const-string v1, "projectId"

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->zzmnf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzbi;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzbi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzbi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
