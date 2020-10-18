.class Lcom/google/analytics/tracking/android/GAThread$2;
.super Ljava/lang/Object;
.source "GAThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/GAThread;->dispatch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAThread;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAThread;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAThread$2;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAThread$2;->this$0:Lcom/google/analytics/tracking/android/GAThread;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/GAThread;->access$700(Lcom/google/analytics/tracking/android/GAThread;)Lcom/google/analytics/tracking/android/ServiceProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/ServiceProxy;->dispatch()V

    return-void
.end method
