.class public Lcom/eltechs/axs/helpers/licensing/NullDeviceLimiter;
.super Ljava/lang/Object;
.source "NullDeviceLimiter.java"

# interfaces
.implements Lcom/eltechs/axs/helpers/licensing/DeviceLimiter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceAllowed(Ljava/lang/String;)I
    .locals 0

    const/16 p1, 0x100

    return p1
.end method
