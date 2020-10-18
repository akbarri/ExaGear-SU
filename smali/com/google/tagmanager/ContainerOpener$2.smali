.class final Lcom/google/tagmanager/ContainerOpener$2;
.super Ljava/lang/Object;
.source "ContainerOpener.java"

# interfaces
.implements Lcom/google/tagmanager/ContainerOpener$Notifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/ContainerOpener;->openContainer(Lcom/google/tagmanager/TagManager;Ljava/lang/String;Lcom/google/tagmanager/ContainerOpener$OpenType;Ljava/lang/Long;)Lcom/google/tagmanager/ContainerOpener$ContainerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$future:Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/google/tagmanager/ContainerOpener$2;->val$future:Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containerAvailable(Lcom/google/tagmanager/Container;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/google/tagmanager/ContainerOpener$2;->val$future:Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/ContainerOpener$ContainerFutureImpl;->setContainer(Lcom/google/tagmanager/Container;)V

    return-void
.end method
