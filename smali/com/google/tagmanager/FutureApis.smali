.class Lcom/google/tagmanager/FutureApis;
.super Ljava/lang/Object;
.source "FutureApis.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setOwnerOnlyReadWrite(Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .line 41
    invoke-static {}, Lcom/google/tagmanager/FutureApis;->version()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    return v1

    .line 45
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 49
    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 p0, 0x1

    .line 52
    invoke-virtual {v0, p0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 53
    invoke-virtual {v0, p0, p0}, Ljava/io/File;->setWritable(ZZ)Z

    return p0
.end method

.method public static version()I
    .locals 2

    .line 26
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid version number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method
