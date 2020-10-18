.class Lcom/google/tagmanager/NetworkClientFactory;
.super Ljava/lang/Object;
.source "NetworkClientFactory.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNetworkClient()Lcom/google/tagmanager/NetworkClient;
    .locals 2

    .line 12
    invoke-virtual {p0}, Lcom/google/tagmanager/NetworkClientFactory;->getSdkVersion()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 15
    new-instance v0, Lcom/google/tagmanager/HttpNetworkClient;

    invoke-direct {v0}, Lcom/google/tagmanager/HttpNetworkClient;-><init>()V

    return-object v0

    .line 20
    :cond_0
    new-instance v0, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;

    invoke-direct {v0}, Lcom/google/tagmanager/HttpUrlConnectionNetworkClient;-><init>()V

    return-object v0
.end method

.method getSdkVersion()I
    .locals 1
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
