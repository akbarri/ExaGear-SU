.class Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$2;
.super Ljava/lang/Object;
.source "ResourceLoaderSchedulerImpl.java"

# interfaces
.implements Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/CtfeHost;Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ScheduledExecutorServiceFactory;Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$ResourceLoaderFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$2;->this$0:Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResourceLoader(Lcom/google/tagmanager/CtfeHost;)Lcom/google/tagmanager/ResourceLoader;
    .locals 3

    .line 74
    new-instance v0, Lcom/google/tagmanager/ResourceLoader;

    iget-object v1, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$2;->this$0:Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;

    invoke-static {v1}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->access$000(Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl$2;->this$0:Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;

    invoke-static {v2}, Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;->access$100(Lcom/google/tagmanager/ResourceLoaderSchedulerImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/tagmanager/ResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/tagmanager/CtfeHost;)V

    return-object v0
.end method
