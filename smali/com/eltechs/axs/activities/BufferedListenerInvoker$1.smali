.class Lcom/eltechs/axs/activities/BufferedListenerInvoker$1;
.super Ljava/lang/Object;
.source "BufferedListenerInvoker.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/activities/BufferedListenerInvoker;-><init>(Ljava/lang/Class;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/activities/BufferedListenerInvoker;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/activities/BufferedListenerInvoker;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker$1;->this$0:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 57
    iget-object p1, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker$1;->this$0:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    monitor-enter p1

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker$1;->this$0:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    invoke-static {v0}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->access$000(Lcom/eltechs/axs/activities/BufferedListenerInvoker;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker$1;->this$0:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    invoke-static {v0}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->access$000(Lcom/eltechs/axs/activities/BufferedListenerInvoker;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    monitor-exit p1

    return-object p2

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker$1;->this$0:Lcom/eltechs/axs/activities/BufferedListenerInvoker;

    invoke-static {v0}, Lcom/eltechs/axs/activities/BufferedListenerInvoker;->access$100(Lcom/eltechs/axs/activities/BufferedListenerInvoker;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;

    invoke-direct {v1, p2, p3}, Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 65
    monitor-exit p1

    return-object p2

    :catchall_0
    move-exception p2

    .line 66
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
