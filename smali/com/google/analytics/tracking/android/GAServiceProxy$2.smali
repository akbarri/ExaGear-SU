.class Lcom/google/analytics/tracking/android/GAServiceProxy$2;
.super Ljava/lang/Object;
.source "GAServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAServiceProxy;->sendQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAServiceProxy;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceProxy$2;->this$0:Lcom/google/analytics/tracking/android/GAServiceProxy;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAServiceProxy;->access$000(Lcom/google/analytics/tracking/android/GAServiceProxy;)V

    return-void
.end method
