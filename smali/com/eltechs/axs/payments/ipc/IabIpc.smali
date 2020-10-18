.class public abstract Lcom/eltechs/axs/payments/ipc/IabIpc;
.super Ljava/lang/Object;
.source "IabIpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/payments/ipc/IabIpc$Response;,
        Lcom/eltechs/axs/payments/ipc/IabIpc$Request;
    }
.end annotation


# static fields
.field static final PERMISSION_NAME:Ljava/lang/String; = "com.eltechs.axs.permission.IAB_IPC"

.field static final REQUEST_EXTRA_REQID:Ljava/lang/String; = "REQUEST_EXTRA_REQID"

.field static final REQUEST_EXTRA_SOURCE_PKG_NAME:Ljava/lang/String; = "REQUEST_EXTRA_SOURCE_PKG_NAME"

.field static final RESPONSE_EXTRA_REQID:Ljava/lang/String; = "RESPONSE_EXTRA_REQID"

.field static final RESPONSE_EXTRA_SKU_LIST:Ljava/lang/String; = "RESPONSE_EXTRA_SKU_LIST"

.field static final TAG:Ljava/lang/String; = "IabIpc"

.field static gResponse:Lcom/eltechs/axs/payments/ipc/IabIpc$Response;

.field static logEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 1

    .line 82
    sget-boolean v0, Lcom/eltechs/axs/payments/ipc/IabIpc;->logEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "IabIpc"

    .line 83
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
