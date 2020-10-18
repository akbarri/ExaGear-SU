.class public Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;
    }
.end annotation


# instance fields
.field private final zzosi:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->zza(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->zzosi:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;Lcom/google/firebase/remoteconfig/zzb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;-><init>(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;)V

    return-void
.end method


# virtual methods
.method public isDeveloperModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;->zzosi:Z

    return v0
.end method
