.class Lcom/google/analytics/tracking/android/DefaultLoggerImpl;
.super Ljava/lang/Object;
.source "DefaultLoggerImpl.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/Logger;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GAV3"
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-object v0, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    iput-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-void
.end method

.method private formatMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GAV3"

    const/4 v1, 0x0

    .line 54
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ERROR:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GAV3"

    .line 47
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getLogLevel()Lcom/google/analytics/tracking/android/Logger$LogLevel;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->INFO:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GAV3"

    .line 33
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->VERBOSE:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GAV3"

    .line 26
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->mLogLevel:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/analytics/tracking/android/Logger$LogLevel;->WARNING:Lcom/google/analytics/tracking/android/Logger$LogLevel;

    invoke-virtual {v1}, Lcom/google/analytics/tracking/android/Logger$LogLevel;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GAV3"

    .line 40
    invoke-direct {p0, p1}, Lcom/google/analytics/tracking/android/DefaultLoggerImpl;->formatMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
