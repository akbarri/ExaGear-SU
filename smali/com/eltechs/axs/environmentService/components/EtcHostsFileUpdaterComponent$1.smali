.class Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent$1;
.super Ljava/lang/Object;
.source "EtcHostsFileUpdaterComponent.java"

# interfaces
.implements Lcom/eltechs/axs/NetworkStateListener$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent$1;->this$0:Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkStateChanged(Ljava/lang/String;)V
    .locals 5

    .line 37
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent$1;->this$0:Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;

    invoke-static {v1}, Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;->access$000(Lcom/eltechs/axs/environmentService/components/EtcHostsFileUpdaterComponent;)Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/eltechs/axs/ExagearImageConfiguration/ExagearImage;->getPath()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc/hosts"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(Z)V

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    const-string v0, "%s\t%s\n"

    const/4 v4, 0x2

    .line 43
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string p1, "localhost"

    aput-object p1, v4, v3

    invoke-virtual {v1, v0, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 44
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 46
    :catch_0
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->unreachable()V

    :goto_2
    return-void
.end method
