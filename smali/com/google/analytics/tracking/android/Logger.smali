.class public interface abstract Lcom/google/analytics/tracking/android/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/analytics/tracking/android/Logger$LogLevel;
    }
.end annotation


# virtual methods
.method public abstract error(Ljava/lang/Exception;)V
.end method

.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract getLogLevel()Lcom/google/analytics/tracking/android/Logger$LogLevel;
.end method

.method public abstract info(Ljava/lang/String;)V
.end method

.method public abstract setLogLevel(Lcom/google/analytics/tracking/android/Logger$LogLevel;)V
.end method

.method public abstract verbose(Ljava/lang/String;)V
.end method

.method public abstract warn(Ljava/lang/String;)V
.end method
