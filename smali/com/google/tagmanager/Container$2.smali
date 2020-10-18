.class Lcom/google/tagmanager/Container$2;
.super Ljava/lang/Object;
.source "Container.java"

# interfaces
.implements Lcom/google/tagmanager/LoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/Container;->load(Lcom/google/tagmanager/Container$Callback;Lcom/google/tagmanager/Container$ResourceLoaderScheduler;Lcom/google/tagmanager/Clock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/tagmanager/LoadCallback<",
        "Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/Container;

.field final synthetic val$clock:Lcom/google/tagmanager/Clock;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Clock;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    iput-object p2, p0, Lcom/google/tagmanager/Container$2;->val$clock:Lcom/google/tagmanager/Clock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private failureToRefreshFailure(Lcom/google/tagmanager/LoadCallback$Failure;)Lcom/google/tagmanager/Container$RefreshFailure;
    .locals 1

    .line 500
    sget-object v0, Lcom/google/tagmanager/Container$4;->$SwitchMap$com$google$tagmanager$LoadCallback$Failure:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/LoadCallback$Failure;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 508
    sget-object p1, Lcom/google/tagmanager/Container$RefreshFailure;->UNKNOWN_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object p1

    .line 506
    :pswitch_0
    sget-object p1, Lcom/google/tagmanager/Container$RefreshFailure;->SERVER_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object p1

    .line 504
    :pswitch_1
    sget-object p1, Lcom/google/tagmanager/Container$RefreshFailure;->IO_ERROR:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object p1

    .line 502
    :pswitch_2
    sget-object p1, Lcom/google/tagmanager/Container$RefreshFailure;->NO_SAVED_CONTAINER:Lcom/google/tagmanager/Container$RefreshFailure;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onFailure(Lcom/google/tagmanager/LoadCallback$Failure;)V
    .locals 2

    .line 490
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    invoke-direct {p0, p1}, Lcom/google/tagmanager/Container$2;->failureToRefreshFailure(Lcom/google/tagmanager/LoadCallback$Failure;)Lcom/google/tagmanager/Container$RefreshFailure;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/tagmanager/Container;->access$400(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;Lcom/google/tagmanager/Container$RefreshFailure;)V

    .line 493
    iget-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {p1}, Lcom/google/tagmanager/Container;->isDefault()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 495
    iget-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/Container;->loadAfterDelay(J)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V
    .locals 8

    .line 477
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {v0}, Lcom/google/tagmanager/Container;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->getResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/tagmanager/Container;->access$100(Lcom/google/tagmanager/Container;Lcom/google/analytics/containertag/proto/Serving$Resource;Z)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setting refresh time to saved time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->getTimeStamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-virtual {p1}, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;->getTimeStamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/tagmanager/Container;->access$202(Lcom/google/tagmanager/Container;J)J

    .line 481
    iget-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    invoke-static {v2}, Lcom/google/tagmanager/Container;->access$200(Lcom/google/tagmanager/Container;)J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    iget-object v6, p0, Lcom/google/tagmanager/Container$2;->val$clock:Lcom/google/tagmanager/Clock;

    invoke-interface {v6}, Lcom/google/tagmanager/Clock;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/google/tagmanager/Container;->loadAfterDelay(J)V

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v0, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    invoke-static {p1, v0}, Lcom/google/tagmanager/Container;->access$300(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 466
    check-cast p1, Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/Container$2;->onSuccess(Lcom/google/tagmanager/proto/Resource$ResourceWithMetadata;)V

    return-void
.end method

.method public startLoad()V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/google/tagmanager/Container$2;->this$0:Lcom/google/tagmanager/Container;

    sget-object v1, Lcom/google/tagmanager/Container$RefreshType;->SAVED:Lcom/google/tagmanager/Container$RefreshType;

    invoke-static {v0, v1}, Lcom/google/tagmanager/Container;->access$000(Lcom/google/tagmanager/Container;Lcom/google/tagmanager/Container$RefreshType;)V

    return-void
.end method
