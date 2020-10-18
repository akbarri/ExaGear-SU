.class Lcom/google/tagmanager/ContainerOpener$WaitForFresh;
.super Ljava/lang/Object;
.source "ContainerOpener.java"

# interfaces
.implements Lcom/google/tagmanager/Container$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/ContainerOpener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WaitForFresh"
.end annotation


# instance fields
.field private final mOldestTimeToBeFresh:J

.field final synthetic this$0:Lcom/google/tagmanager/ContainerOpener;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/ContainerOpener;J)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-wide p2, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->mOldestTimeToBeFresh:J

    return-void
.end method

.method private isFresh()Z
    .locals 4

    .line 166
    iget-wide v0, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->mOldestTimeToBeFresh:J

    iget-object v2, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    invoke-static {v2}, Lcom/google/tagmanager/ContainerOpener;->access$100(Lcom/google/tagmanager/ContainerOpener;)Lcom/google/tagmanager/Container;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public containerRefreshBegin(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 0

    return-void
.end method

.method public containerRefreshFailure(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V
    .locals 0

    .line 160
    sget-object p3, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    if-ne p2, p3, :cond_0

    .line 161
    iget-object p2, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    invoke-static {p2, p1}, Lcom/google/tagmanager/ContainerOpener;->access$000(Lcom/google/tagmanager/ContainerOpener;Lcom/google/tagmanager/Container;)V

    :cond_0
    return-void
.end method

.method public containerRefreshSuccess(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V
    .locals 1

    .line 152
    sget-object v0, Lcom/google/tagmanager/Container$RefreshType;->NETWORK:Lcom/google/tagmanager/Container$RefreshType;

    if-eq p2, v0, :cond_0

    invoke-direct {p0}, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->isFresh()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 153
    :cond_0
    iget-object p2, p0, Lcom/google/tagmanager/ContainerOpener$WaitForFresh;->this$0:Lcom/google/tagmanager/ContainerOpener;

    invoke-static {p2, p1}, Lcom/google/tagmanager/ContainerOpener;->access$000(Lcom/google/tagmanager/ContainerOpener;Lcom/google/tagmanager/Container;)V

    :cond_1
    return-void
.end method
