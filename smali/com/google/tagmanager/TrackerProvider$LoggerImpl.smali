.class Lcom/google/tagmanager/TrackerProvider$LoggerImpl;
.super Ljava/lang/Object;
.source "TrackerProvider.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/TrackerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoggerImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toAnalyticsLogLevel(Lcom/google/tagmanager/Logger$LogLevel;)Lcom/google/analytics/tracking/android/Logger$LogLevel;
    .locals 1

    .line 88
    sget-object v0, Lcom/google/tagmanager/TrackerProvider$1;->$SwitchMap$com$google$tagmanager$Logger$LogLevel:[I

    invoke-virtual {p0}, Lcom/google/tagmanager/Logger$LogLevel;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 100
    sget-object p0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object p0

    .line 98
    :pswitch_0
    sget-object p0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object p0

    .line 96
    :pswitch_1
    sget-object p0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object p0

    .line 93
    :pswitch_2
    sget-object p0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->WARNING:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object p0

    .line 91
    :pswitch_3
    sget-object p0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, ""

    .line 55
    invoke-static {v0, p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p1}, Lcom/google/tagmanager/Log;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getLogLevel()Lcom/google/analytics/tracking/android/Logger$LogLevel;
    .locals 1

    .line 75
    invoke-static {}, Lcom/google/tagmanager/Log;->getLogLevel()Lcom/google/tagmanager/Logger$LogLevel;

    move-result-object v0

    if-nez v0, :cond_0

    .line 76
    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/google/tagmanager/TrackerProvider$LoggerImpl;->toAnalyticsLogLevel(Lcom/google/tagmanager/Logger$LogLevel;)Lcom/google/analytics/tracking/android/Logger$LogLevel;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-static {p1}, Lcom/google/tagmanager/Log;->i(Ljava/lang/String;)V

    return-void
.end method

.method public setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V
    .locals 0

    const-string p1, "GA uses GTM logger. Please use TagManager.getLogger().setLogLevel(LogLevel) instead."

    .line 82
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-static {p1}, Lcom/google/tagmanager/Log;->v(Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/google/tagmanager/Log;->w(Ljava/lang/String;)V

    return-void
.end method
