.class Lcom/google/tagmanager/ServiceManagerImpl$3;
.super Ljava/lang/Object;
.source "ServiceManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/ServiceManagerImpl;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/ServiceManagerImpl;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/ServiceManagerImpl;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/google/tagmanager/ServiceManagerImpl$3;->this$0:Lcom/google/tagmanager/ServiceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/tagmanager/ServiceManagerImpl$3;->this$0:Lcom/google/tagmanager/ServiceManagerImpl;

    invoke-static {v0}, Lcom/google/tagmanager/ServiceManagerImpl;->access$500(Lcom/google/tagmanager/ServiceManagerImpl;)Lcom/google/tagmanager/HitStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/HitStore;->dispatch()V

    return-void
.end method
