.class final Lcom/google/android/gms/common/api/internal/zzi$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field public final zzfug:I

.field public final zzfuh:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public final zzfui:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private synthetic zzfuj:Lcom/google/android/gms/common/api/internal/zzi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzi;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzi$zza;->zzfuj:Lcom/google/android/gms/common/api/internal/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/internal/zzi$zza;->zzfug:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/zzi$zza;->zzfuh:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/zzi$zza;->zzfui:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-virtual {p3, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public final onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "AutoManageHelper"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1b

    add-int/2addr v3, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "beginFailureResolution for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzi$zza;->zzfuj:Lcom/google/android/gms/common/api/internal/zzi;

    iget v1, p0, Lcom/google/android/gms/common/api/internal/zzi$zza;->zzfug:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zzo;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method
