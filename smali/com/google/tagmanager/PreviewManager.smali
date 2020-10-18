.class Lcom/google/tagmanager/PreviewManager;
.super Ljava/lang/Object;
.source "PreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/tagmanager/PreviewManager$PreviewMode;
    }
.end annotation


# static fields
.field static final BASE_DEBUG_QUERY:Ljava/lang/String; = "&gtm_debug=x"

.field private static final CONTAINER_BASE_PATTERN:Ljava/lang/String; = "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&"

.field private static final CONTAINER_DEBUG_STRING_PATTERN:Ljava/lang/String; = ".*?&gtm_debug=x$"

.field private static final CONTAINER_PREVIEW_EXIT_URL_PATTERN:Ljava/lang/String; = "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

.field private static final CONTAINER_PREVIEW_URL_PATTERN:Ljava/lang/String; = "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

.field static final CTFE_URL_PATH_PREFIX:Ljava/lang/String; = "/r?"

.field private static sInstance:Lcom/google/tagmanager/PreviewManager;


# instance fields
.field private volatile mCTFEUrlPath:Ljava/lang/String;

.field private volatile mCTFEUrlQuery:Ljava/lang/String;

.field private volatile mContainerId:Ljava/lang/String;

.field private volatile mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0}, Lcom/google/tagmanager/PreviewManager;->clear()V

    return-void
.end method

.method private getContainerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "&"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 140
    aget-object p1, p1, v0

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method static getInstance()Lcom/google/tagmanager/PreviewManager;
    .locals 2

    .line 58
    const-class v0, Lcom/google/tagmanager/PreviewManager;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/google/tagmanager/PreviewManager;->sInstance:Lcom/google/tagmanager/PreviewManager;

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/google/tagmanager/PreviewManager;

    invoke-direct {v1}, Lcom/google/tagmanager/PreviewManager;-><init>()V

    sput-object v1, Lcom/google/tagmanager/PreviewManager;->sInstance:Lcom/google/tagmanager/PreviewManager;

    .line 63
    :cond_0
    sget-object v1, Lcom/google/tagmanager/PreviewManager;->sInstance:Lcom/google/tagmanager/PreviewManager;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getQueryWithoutDebugParameter(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    const-string v0, "&gtm_debug=x"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method clear()V
    .locals 1

    .line 131
    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->NONE:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    return-void
.end method

.method getCTFEUrlDebugQuery()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    return-object v0
.end method

.method getCTFEUrlPath()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;

    return-object v0
.end method

.method getContainerId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    return-object v0
.end method

.method getPreviewMode()Lcom/google/tagmanager/PreviewManager$PreviewMode;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    return-object v0
.end method

.method declared-synchronized setPreviewData(Landroid/net/Uri;)Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_auth=\\S+&gtm_preview=\\d+(&gtm_debug=x)?$"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Container preview url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    const-string v0, ".*?&gtm_debug=x$"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    goto :goto_0

    .line 80
    :cond_0
    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    .line 97
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/tagmanager/PreviewManager;->getQueryWithoutDebugParameter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    .line 99
    iget-object p1, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    sget-object v0, Lcom/google/tagmanager/PreviewManager$PreviewMode;->CONTAINER_DEBUG:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    if-ne p1, v0, :cond_2

    .line 100
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/r?"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlQuery:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/tagmanager/PreviewManager;->getContainerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    monitor-exit p0

    return v3

    :cond_3
    :try_start_2
    const-string v2, "^tagmanager.c.\\S+:\\/\\/preview\\/p\\?id=\\S+&gtm_preview=$"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 83
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/tagmanager/PreviewManager;->getContainerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exit preview mode for container: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/tagmanager/PreviewManager;->mContainerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 85
    sget-object p1, Lcom/google/tagmanager/PreviewManager$PreviewMode;->NONE:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    iput-object p1, p0, Lcom/google/tagmanager/PreviewManager;->mPreviewMode:Lcom/google/tagmanager/PreviewManager$PreviewMode;

    const/4 p1, 0x0

    .line 86
    iput-object p1, p0, Lcom/google/tagmanager/PreviewManager;->mCTFEUrlPath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    monitor-exit p0

    return v3

    .line 90
    :cond_4
    monitor-exit p0

    return v0

    .line 93
    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid preview uri: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 67
    monitor-exit p0

    throw p1

    .line 73
    :catch_0
    monitor-exit p0

    return v0
.end method
