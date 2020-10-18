.class Lcom/google/analytics/tracking/android/GAServiceManager$1;
.super Ljava/lang/Object;
.source "GAServiceManager.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/AnalyticsStoreStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/GAServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/GAServiceManager;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/GAServiceManager;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/google/analytics/tracking/android/GAServiceManager$1;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportStoreIsEmpty(Z)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/analytics/tracking/android/GAServiceManager$1;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    iget-object v1, p0, Lcom/google/analytics/tracking/android/GAServiceManager$1;->this$0:Lcom/google/analytics/tracking/android/GAServiceManager;

    invoke-static {v1}, Lcom/google/analytics/tracking/android/GAServiceManager;->access$000(Lcom/google/analytics/tracking/android/GAServiceManager;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/analytics/tracking/android/GAServiceManager;->updatePowerSaveMode(ZZ)V

    return-void
.end method
