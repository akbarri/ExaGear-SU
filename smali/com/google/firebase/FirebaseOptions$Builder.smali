.class public final Lcom/google/firebase/FirebaseOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/FirebaseOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzetb:Ljava/lang/String;

.field private zzmna:Ljava/lang/String;

.field private zzmnb:Ljava/lang/String;

.field private zzmnc:Ljava/lang/String;

.field private zzmnd:Ljava/lang/String;

.field private zzmne:Ljava/lang/String;

.field private zzmnf:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/FirebaseOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zza(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzetb:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zzb(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmna:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zzc(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnb:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zzd(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnc:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zze(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnd:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zzf(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmne:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/FirebaseOptions;->zzg(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/firebase/FirebaseOptions;
    .locals 10

    new-instance v9, Lcom/google/firebase/FirebaseOptions;

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzetb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmna:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnc:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnd:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmne:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnf:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/zzc;)V

    return-object v9
.end method

.method public final setApiKey(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ApiKey must be set."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmna:Ljava/lang/String;

    return-object p0
.end method

.method public final setApplicationId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "ApplicationId must be set."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzbq;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzetb:Ljava/lang/String;

    return-object p0
.end method

.method public final setDatabaseUrl(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnb:Ljava/lang/String;

    return-object p0
.end method

.method public final setGcmSenderId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnd:Ljava/lang/String;

    return-object p0
.end method

.method public final setProjectId(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmnf:Ljava/lang/String;

    return-object p0
.end method

.method public final setStorageBucket(Ljava/lang/String;)Lcom/google/firebase/FirebaseOptions$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions$Builder;->zzmne:Ljava/lang/String;

    return-object p0
.end method
