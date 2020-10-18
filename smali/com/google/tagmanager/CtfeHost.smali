.class Lcom/google/tagmanager/CtfeHost;
.super Ljava/lang/Object;
.source "CtfeHost.java"


# static fields
.field private static final CTFE_SERVER_ADDRESS:Ljava/lang/String; = "https://www.googletagmanager.com"

.field static final CTFE_URL_PATH_PREFIX:Ljava/lang/String; = "/d?"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field static final DEBUG_EVENT_NUMBER_QUERY:Ljava/lang/String; = "&event_number="


# instance fields
.field private mCtfeServerAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "https://www.googletagmanager.com"

    .line 21
    iput-object v0, p0, Lcom/google/tagmanager/CtfeHost;->mCtfeServerAddress:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method constructCtfeDebugUrl(I)Ljava/lang/String;
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/tagmanager/CtfeHost;->mCtfeServerAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/d?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/tagmanager/PreviewManager;->getInstance()Lcom/google/tagmanager/PreviewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/tagmanager/PreviewManager;->getCTFEUrlDebugQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&event_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCtfeServerAddress()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/tagmanager/CtfeHost;->mCtfeServerAddress:Ljava/lang/String;

    return-object v0
.end method

.method public setCtfeServerAddress(Ljava/lang/String;)V
    .locals 2

    .line 25
    iput-object p1, p0, Lcom/google/tagmanager/CtfeHost;->mCtfeServerAddress:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Ctfe server endpoint was changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    return-void
.end method
