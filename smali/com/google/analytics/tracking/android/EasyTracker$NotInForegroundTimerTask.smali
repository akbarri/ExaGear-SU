.class Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;
.super Ljava/util/TimerTask;
.source "EasyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/EasyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotInForegroundTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/analytics/tracking/android/EasyTracker;


# direct methods
.method private constructor <init>(Lcom/google/analytics/tracking/android/EasyTracker;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;->this$0:Lcom/google/analytics/tracking/android/EasyTracker;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/analytics/tracking/android/EasyTracker;Lcom/google/analytics/tracking/android/EasyTracker$1;)V
    .locals 0

    .line 448
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;-><init>(Lcom/google/analytics/tracking/android/EasyTracker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/google/analytics/tracking/android/EasyTracker$NotInForegroundTimerTask;->this$0:Lcom/google/analytics/tracking/android/EasyTracker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/analytics/tracking/android/EasyTracker;->access$102(Lcom/google/analytics/tracking/android/EasyTracker;Z)Z

    return-void
.end method
