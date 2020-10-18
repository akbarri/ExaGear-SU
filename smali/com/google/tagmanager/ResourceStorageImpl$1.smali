.class Lcom/google/tagmanager/ResourceStorageImpl$1;
.super Ljava/lang/Object;
.source "ResourceStorageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/tagmanager/ResourceStorageImpl;->loadResourceFromDiskInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/tagmanager/ResourceStorageImpl;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/ResourceStorageImpl;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/google/tagmanager/ResourceStorageImpl$1;->this$0:Lcom/google/tagmanager/ResourceStorageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/tagmanager/ResourceStorageImpl$1;->this$0:Lcom/google/tagmanager/ResourceStorageImpl;

    invoke-virtual {v0}, Lcom/google/tagmanager/ResourceStorageImpl;->loadResourceFromDisk()V

    return-void
.end method
