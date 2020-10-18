.class public abstract Lcom/eltechs/axs/guestApplicationsTracker/impl/ProcessHelpers;
.super Ljava/lang/Object;
.source "ProcessHelpers.java"


# static fields
.field public static final SIGCONT:I = 0x12

.field public static final SIGKILL:I = 0x9

.field public static final SIGSTOP:I = 0x13

.field public static final SIGTERM:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ubt-helpers"

    .line 15
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static killProcess(I)V
    .locals 1

    const/16 v0, 0x9

    .line 53
    invoke-static {p0, v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/ProcessHelpers;->sendSignal(II)V

    return-void
.end method

.method public static notifyProcessOfTermination(I)V
    .locals 1

    const/16 v0, 0xf

    .line 65
    invoke-static {p0, v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/ProcessHelpers;->sendSignal(II)V

    return-void
.end method

.method public static resumeProcess(I)V
    .locals 1

    const/16 v0, 0x12

    .line 43
    invoke-static {p0, v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/ProcessHelpers;->sendSignal(II)V

    return-void
.end method

.method private static native sendSignal(II)V
.end method

.method public static suspendProcess(I)V
    .locals 1

    const/16 v0, 0x13

    .line 33
    invoke-static {p0, v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/ProcessHelpers;->sendSignal(II)V

    return-void
.end method
