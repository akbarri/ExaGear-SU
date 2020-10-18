.class public final Lcom/google/android/gms/internal/zzfaq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigInfo;


# annotations
.annotation build Lcom/google/android/gms/common/internal/Hide;
.end annotation


# instance fields
.field private zzosq:J

.field private zzosr:I

.field private zzoss:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConfigSettings()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfaq;->zzoss:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    return-object v0
.end method

.method public final getFetchTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzfaq;->zzosq:J

    return-wide v0
.end method

.method public final getLastFetchStatus()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfaq;->zzosr:I

    return v0
.end method

.method public final setConfigSettings(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfaq;->zzoss:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    return-void
.end method

.method public final zzcn(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzfaq;->zzosq:J

    return-void
.end method

.method public final zziy(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzfaq;->zzosr:I

    return-void
.end method
