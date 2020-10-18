.class public Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl$OutputStreamLock;
.super Ljava/lang/Object;
.source "XOutputStreamImpl.java"

# interfaces
.implements Lcom/eltechs/axs/xconnectors/XStreamLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutputStreamLock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl$OutputStreamLock;->this$0:Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    invoke-static {p1}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->access$000(Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl$OutputStreamLock;->this$0:Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;

    invoke-virtual {v0}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object v0, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl$OutputStreamLock;->this$0:Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;

    invoke-static {v0}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->access$000(Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl$OutputStreamLock;->this$0:Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;

    invoke-static {v1}, Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;->access$000(Lcom/eltechs/axs/xconnectors/impl/XOutputStreamImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
