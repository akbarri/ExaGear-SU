.class final Lcom/google/tagmanager/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field static sLogger:Lcom/google/tagmanager/Logger;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/google/tagmanager/DefaultLogger;

    invoke-direct {v0}, Lcom/google/tagmanager/DefaultLogger;-><init>()V

    sput-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .line 51
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/Logger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 55
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 27
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 31
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getLogLevel()Lcom/google/tagmanager/Logger$LogLevel;
    .locals 1

    .line 67
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0}, Lcom/google/tagmanager/Logger;->getLogLevel()Lcom/google/tagmanager/Logger$LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger()Lcom/google/tagmanager/Logger;
    .locals 2

    .line 23
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/tagmanager/NoOpLogger;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    :goto_0
    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .line 43
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/Logger;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 47
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Logger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setLogger(Lcom/google/tagmanager/Logger;)V
    .locals 0

    if-nez p0, :cond_0

    .line 16
    new-instance p0, Lcom/google/tagmanager/NoOpLogger;

    invoke-direct {p0}, Lcom/google/tagmanager/NoOpLogger;-><init>()V

    sput-object p0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    goto :goto_0

    .line 18
    :cond_0
    sput-object p0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/Logger;->v(Ljava/lang/String;)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Logger;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 35
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0}, Lcom/google/tagmanager/Logger;->w(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 39
    sget-object v0, Lcom/google/tagmanager/Log;->sLogger:Lcom/google/tagmanager/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/tagmanager/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
